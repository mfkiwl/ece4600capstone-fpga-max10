#include "radio_freq.h"

// Channel numbering based on Bluetooth LE. No need to reinvent the wheel...
// Data is transferred on channels 0-36, advertising/pairing on channels 37-39.
static const uint8_t RADIO_CHANNEL_FREQ[40] = {
	0x04, 0x06, 0x08, 0x0A, 0x0C, 0x0E, 0x10, 0x12,
	0x14, 0x16, 0x18, 0x1C, 0x1E, 0x20, 0x22, 0x24,
	0x26, 0x28, 0x2A, 0x2C, 0x2E, 0x30, 0x32, 0x34,
	0x36, 0x38, 0x3A, 0x3C, 0x3E, 0x40, 0x42, 0x44,
	0x46, 0x48, 0x4A, 0x4C, 0x4E, 0x02, 0x1A, 0x50,
};