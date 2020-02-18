#include <stdint.h>
#include "crc.h"
#include <stdio.h>

// Automatically generated CRC function
// polynomial: 0x1A2EB, bit reverse algorithm
static const uint16_t crc16_table[256] = {
	0x0000U, 0x1EA1U, 0x3D42U, 0x23E3U, 0x7A84U, 0x6425U, 0x47C6U, 0x5967U,
	0xF508U, 0xEBA9U, 0xC84AU, 0xD6EBU, 0x8F8CU, 0x912DU, 0xB2CEU, 0xAC6FU,
	0x449BU, 0x5A3AU, 0x79D9U, 0x6778U, 0x3E1FU, 0x20BEU, 0x035DU, 0x1DFCU,
	0xB193U, 0xAF32U, 0x8CD1U, 0x9270U, 0xCB17U, 0xD5B6U, 0xF655U, 0xE8F4U,
	0x8936U, 0x9797U, 0xB474U, 0xAAD5U, 0xF3B2U, 0xED13U, 0xCEF0U, 0xD051U,
	0x7C3EU, 0x629FU, 0x417CU, 0x5FDDU, 0x06BAU, 0x181BU, 0x3BF8U, 0x2559U,
	0xCDADU, 0xD30CU, 0xF0EFU, 0xEE4EU, 0xB729U, 0xA988U, 0x8A6BU, 0x94CAU,
	0x38A5U, 0x2604U, 0x05E7U, 0x1B46U, 0x4221U, 0x5C80U, 0x7F63U, 0x61C2U,
	0xBCE7U, 0xA246U, 0x81A5U, 0x9F04U, 0xC663U, 0xD8C2U, 0xFB21U, 0xE580U,
	0x49EFU, 0x574EU, 0x74ADU, 0x6A0CU, 0x336BU, 0x2DCAU, 0x0E29U, 0x1088U,
	0xF87CU, 0xE6DDU, 0xC53EU, 0xDB9FU, 0x82F8U, 0x9C59U, 0xBFBAU, 0xA11BU,
	0x0D74U, 0x13D5U, 0x3036U, 0x2E97U, 0x77F0U, 0x6951U, 0x4AB2U, 0x5413U,
	0x35D1U, 0x2B70U, 0x0893U, 0x1632U, 0x4F55U, 0x51F4U, 0x7217U, 0x6CB6U,
	0xC0D9U, 0xDE78U, 0xFD9BU, 0xE33AU, 0xBA5DU, 0xA4FCU, 0x871FU, 0x99BEU,
	0x714AU, 0x6FEBU, 0x4C08U, 0x52A9U, 0x0BCEU, 0x156FU, 0x368CU, 0x282DU,
	0x8442U, 0x9AE3U, 0xB900U, 0xA7A1U, 0xFEC6U, 0xE067U, 0xC384U, 0xDD25U,
	0xD745U, 0xC9E4U, 0xEA07U, 0xF4A6U, 0xADC1U, 0xB360U, 0x9083U, 0x8E22U,
	0x224DU, 0x3CECU, 0x1F0FU, 0x01AEU, 0x58C9U, 0x4668U, 0x658BU, 0x7B2AU,
	0x93DEU, 0x8D7FU, 0xAE9CU, 0xB03DU, 0xE95AU, 0xF7FBU, 0xD418U, 0xCAB9U,
	0x66D6U, 0x7877U, 0x5B94U, 0x4535U, 0x1C52U, 0x02F3U, 0x2110U, 0x3FB1U,
	0x5E73U, 0x40D2U, 0x6331U, 0x7D90U, 0x24F7U, 0x3A56U, 0x19B5U, 0x0714U,
	0xAB7BU, 0xB5DAU, 0x9639U, 0x8898U, 0xD1FFU, 0xCF5EU, 0xECBDU, 0xF21CU,
	0x1AE8U, 0x0449U, 0x27AAU, 0x390BU, 0x606CU, 0x7ECDU, 0x5D2EU, 0x438FU,
	0xEFE0U, 0xF141U, 0xD2A2U, 0xCC03U, 0x9564U, 0x8BC5U, 0xA826U, 0xB687U,
	0x6BA2U, 0x7503U, 0x56E0U, 0x4841U, 0x1126U, 0x0F87U, 0x2C64U, 0x32C5U,
	0x9EAAU, 0x800BU, 0xA3E8U, 0xBD49U, 0xE42EU, 0xFA8FU, 0xD96CU, 0xC7CDU,
	0x2F39U, 0x3198U, 0x127BU, 0x0CDAU, 0x55BDU, 0x4B1CU, 0x68FFU, 0x765EU,
	0xDA31U, 0xC490U, 0xE773U, 0xF9D2U, 0xA0B5U, 0xBE14U, 0x9DF7U, 0x8356U,
	0xE294U, 0xFC35U, 0xDFD6U, 0xC177U, 0x9810U, 0x86B1U, 0xA552U, 0xBBF3U,
	0x179CU, 0x093DU, 0x2ADEU, 0x347FU, 0x6D18U, 0x73B9U, 0x505AU, 0x4EFBU,
	0xA60FU, 0xB8AEU, 0x9B4DU, 0x85ECU, 0xDC8BU, 0xC22AU, 0xE1C9U, 0xFF68U,
	0x5307U, 0x4DA6U, 0x6E45U, 0x70E4U, 0x2983U, 0x3722U, 0x14C1U, 0x0A60U,
};
uint16_t crc16(uint8_t *data, int len, uint16_t crc)
{
	while (len > 0)
	{
		crc = crc16_table[*data ^ (uint8_t)crc] ^ (crc >> 8);
		data++;
		len--;
	}
	return crc;
}

// Automatically generated CRC function
// polynomial: 0x1D7, bit reverse algorithm
static const uint8_t crc8_table[256] = {
	0x00U, 0x79U, 0xF2U, 0x8BU, 0x33U, 0x4AU, 0xC1U, 0xB8U,
	0x66U, 0x1FU, 0x94U, 0xEDU, 0x55U, 0x2CU, 0xA7U, 0xDEU,
	0xCCU, 0xB5U, 0x3EU, 0x47U, 0xFFU, 0x86U, 0x0DU, 0x74U,
	0xAAU, 0xD3U, 0x58U, 0x21U, 0x99U, 0xE0U, 0x6BU, 0x12U,
	0x4FU, 0x36U, 0xBDU, 0xC4U, 0x7CU, 0x05U, 0x8EU, 0xF7U,
	0x29U, 0x50U, 0xDBU, 0xA2U, 0x1AU, 0x63U, 0xE8U, 0x91U,
	0x83U, 0xFAU, 0x71U, 0x08U, 0xB0U, 0xC9U, 0x42U, 0x3BU,
	0xE5U, 0x9CU, 0x17U, 0x6EU, 0xD6U, 0xAFU, 0x24U, 0x5DU,
	0x9EU, 0xE7U, 0x6CU, 0x15U, 0xADU, 0xD4U, 0x5FU, 0x26U,
	0xF8U, 0x81U, 0x0AU, 0x73U, 0xCBU, 0xB2U, 0x39U, 0x40U,
	0x52U, 0x2BU, 0xA0U, 0xD9U, 0x61U, 0x18U, 0x93U, 0xEAU,
	0x34U, 0x4DU, 0xC6U, 0xBFU, 0x07U, 0x7EU, 0xF5U, 0x8CU,
	0xD1U, 0xA8U, 0x23U, 0x5AU, 0xE2U, 0x9BU, 0x10U, 0x69U,
	0xB7U, 0xCEU, 0x45U, 0x3CU, 0x84U, 0xFDU, 0x76U, 0x0FU,
	0x1DU, 0x64U, 0xEFU, 0x96U, 0x2EU, 0x57U, 0xDCU, 0xA5U,
	0x7BU, 0x02U, 0x89U, 0xF0U, 0x48U, 0x31U, 0xBAU, 0xC3U,
	0xEBU, 0x92U, 0x19U, 0x60U, 0xD8U, 0xA1U, 0x2AU, 0x53U,
	0x8DU, 0xF4U, 0x7FU, 0x06U, 0xBEU, 0xC7U, 0x4CU, 0x35U,
	0x27U, 0x5EU, 0xD5U, 0xACU, 0x14U, 0x6DU, 0xE6U, 0x9FU,
	0x41U, 0x38U, 0xB3U, 0xCAU, 0x72U, 0x0BU, 0x80U, 0xF9U,
	0xA4U, 0xDDU, 0x56U, 0x2FU, 0x97U, 0xEEU, 0x65U, 0x1CU,
	0xC2U, 0xBBU, 0x30U, 0x49U, 0xF1U, 0x88U, 0x03U, 0x7AU,
	0x68U, 0x11U, 0x9AU, 0xE3U, 0x5BU, 0x22U, 0xA9U, 0xD0U,
	0x0EU, 0x77U, 0xFCU, 0x85U, 0x3DU, 0x44U, 0xCFU, 0xB6U,
	0x75U, 0x0CU, 0x87U, 0xFEU, 0x46U, 0x3FU, 0xB4U, 0xCDU,
	0x13U, 0x6AU, 0xE1U, 0x98U, 0x20U, 0x59U, 0xD2U, 0xABU,
	0xB9U, 0xC0U, 0x4BU, 0x32U, 0x8AU, 0xF3U, 0x78U, 0x01U,
	0xDFU, 0xA6U, 0x2DU, 0x54U, 0xECU, 0x95U, 0x1EU, 0x67U,
	0x3AU, 0x43U, 0xC8U, 0xB1U, 0x09U, 0x70U, 0xFBU, 0x82U,
	0x5CU, 0x25U, 0xAEU, 0xD7U, 0x6FU, 0x16U, 0x9DU, 0xE4U,
	0xF6U, 0x8FU, 0x04U, 0x7DU, 0xC5U, 0xBCU, 0x37U, 0x4EU,
	0x90U, 0xE9U, 0x62U, 0x1BU, 0xA3U, 0xDAU, 0x51U, 0x28U,
};
/*uint8_t crc8(uint8_t *data, int len, uint8_t crc)
{
	while (len > 0)
	{
		crc = crc8_table[*data ^ crc];
		data++;
		len--;
	}
	return crc;
}*/
uint8_t crc8_single(uint8_t data, uint8_t crc)
{
	return crc8_table[data ^ crc];
}

// CRC error correction function
// Capable of correction 1-bit errors, and detecting 2-bit and 3-bit errors
static const uint8_t length_correction_crc8_table[256] = {
	0xFFU, 0xFFU, 0x01U, 0xFFU, 0x02U, 0xFFU, 0xFFU, 0xFFU,
	0x04U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x08U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x10U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x20U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x40U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x80U,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
};
uint8_t* detect_packet(uint8_t* buffer, int buffer_count)
{
	buffer_count -= 2;
	while (buffer_count > 0)
	{
		uint8_t error = buffer[0] ^ 0xCA;
		error &= error - 1;
		if (error == 0)
		{
			//Potential sync byte...
			error = crc8_single(buffer[2], crc8_single(buffer[1], 0xFF));
			if (error == 0)
			{
				//Found packet...
				return buffer;
			}
			//CRC invalid, attempt correction...
			error = length_correction_crc8_table[error];
			if (error != 0xFF)
			{
				buffer[1] ^= error;
				return buffer;
			}
		}
		buffer++;
		buffer_count--;
	}
	return NULL;
}
