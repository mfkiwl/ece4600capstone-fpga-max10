#pragma once

#include <stdint.h>

uint16_t crc16(uint8_t *data, int len, uint16_t crc);
//uint8_t crc8(uint8_t *data, int len, uint8_t crc);
uint8_t crc8_single(uint8_t data, uint8_t crc);
