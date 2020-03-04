import crcmod
import serial
import serial.tools.list_ports
import asyncio
import aioserial
import aioconsole

import secrets

def get_ports():
	ports = list(serial.tools.list_ports.comports())
	ports.sort()
	return ports

crc16 = crcmod.mkCrcFun(0x1A2EB)
crc8 = crcmod.mkCrcFun(0x1D7)

length_correction_crc8_table = [
	0xFF, 0xFF, 0x01, 0xFF, 0x02, 0xFF, 0xFF, 0xFF,
	0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0x08, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0x10, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0x20, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0x40, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x80,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
]

def crc_test():
	print(f"0x{format(crc16(bytes()), '04X')}")
	print(f"0x{format(crc16(bytes([0])), '04X')}")
	print(f"0x{format(crc8(bytes()), '02X')}")
	print(f"0x{format(crc8(bytes([0xFF])), '02X')}")


# TODO: FPGA expects configuration data LSB-first, but our SPI bus is running MSB-first.
# When loading configuration files onto the flash memory, flip the order of the bits.


def detect_packet(buffer):
	count = len(buffer) - 2
	for i in range(count):
		error = buffer[i] ^ 0xCA
		error &= error - 1
		if error == 0:
			#Potential sync byte...
			error = crc8(buffer[i+1:i+3])
			if error == 0:
				#Found packet...
				return i
			#CRC invalid, attempt correction...
			error = length_correction_crc8_table[error]
			if error != 0xFF:
				buffer[i+1] ^= error
				return i
	return -1

PACKET_HEADER_SIZE = 8

class PacketStream:
	def __init__(self, port):
		self.tx_lock = asyncio.Lock()
		self.rx_lock = asyncio.Lock()
		self.rx_buffer = bytearray(264)
		if not isinstance(port, str):
			port = port.device
		self.port = aioserial.AioSerial(port, 230400)

	async def write_packet(self, payload):
		#Build packet
		length = len(payload) - 3
		extra = 0
		if length < 0:
			extra = -length
			length = 0
		packet = bytearray()
		packet.append(0xFF)
		packet.append(0xCA)
		packet.append(length)
		packet.append(crc8(bytes([length])))
		packet.extend(payload)
		#Zero-padding to minimum length
		while extra > 0:
			packet.append(0)
			extra -= 1
		#Compute CRC
		packet.append(0)
		packet.append(0)
		view = memoryview(packet)
		packet[7+length:9+length] = crc16(view[4:7+length]).to_bytes(2, 'little')
		#Write packet to UART
		print('Write: ' + ' '.join('{:02x}'.format(b) for b in packet))
		async with self.tx_lock:
			await self.port.write_async(packet)

	async def read_packet(self):
		async with self.rx_lock:
			view = memoryview(self.rx_buffer)
			start = 0
			while True:
				await self.port.readinto_async(view[start:PACKET_HEADER_SIZE])
				offset = detect_packet(view)
				if offset >= 0:
					length = PACKET_HEADER_SIZE - offset
					#Shift header
					if offset != 1:
						view[1:1+length] = view[offset:offset+length]
					#Receive rest of packet
					packet_length = view[2]
					remaining = packet_length + offset
					if remaining > 0:
						await self.port.readinto_async(view[length+1:length+1+remaining])
					print('Read:  ' + ' '.join('{:02x}'.format(b) for b in view[0:9+packet_length]))
					#Extract CRC
					if int.from_bytes(view[7+packet_length:9+packet_length], 'little') == crc16(view[4:7+packet_length]):
						return bytes(view[4:7+packet_length])
					else:
						#Restart search for packet header
						start = 0
				else:
					#Continue search for header
					view[0:2] = view[PACKET_HEADER_SIZE-2:PACKET_HEADER_SIZE]
					start = 2
		return None

async def send_test_packets():
	ports = get_ports()
	for p in ports:
		print(str(p))
	port = PacketStream(input("Port: "))
	i = 0
	while True:
		await port.write_packet(i.to_bytes(2, 'little') + secrets.token_bytes(secrets.randbelow(40)))
		response = await port.read_packet()
		i += 1
		await aioconsole.ainput("Send packet?")
		await asyncio.sleep(0.1)

if __name__ == "__main__":
	asyncio.run(send_test_packets())
