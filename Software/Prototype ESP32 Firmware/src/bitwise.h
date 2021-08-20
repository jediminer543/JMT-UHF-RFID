#ifndef _H_JMTBITWISE
#define _H_JMTBITWISE

// MISC STUFF
////////////////
#pragma region MISCSTUFF

inline uint8_t bitLenToByteLen(uint32_t len) {
  return (len % 8 != 0) + (len / 8);
}

//inline uint8_t min(uint8_t a, uint8_t b) {
//  return a < b ? a : b;
//}
#pragma endregion


// Bitwise ops utils
///////////////////
#pragma region Bitwise
uint8_t* expandArray(uint8_t* orig, uint8_t len, uint8_t nlen) {
  uint8_t* out = (uint8_t*)calloc(nlen, 1);
  memcpy(out, orig, len);
  return out;
}


uint8_t getBit(const uint8_t* pattern, uint32_t idx) {
  uint8_t bitidx = idx % 8;
  uint8_t byteidx = idx / 8;
  return (*(pattern + byteidx) >> bitidx) & 0x1;
}

uint8_t getBit(const int8_t pattern, uint32_t idx) {
  return pattern >> idx & 0x1;
}

uint8_t getBit(const int16_t pattern, uint32_t idx) {
  return pattern >> idx & 0x1;
}

uint8_t getBit(const int32_t pattern, uint32_t idx) {
  return pattern >> idx & 0x1;
}

uint8_t getBit(const uint8_t pattern, uint32_t idx) {
  return pattern >> idx & 0x1;
}

uint8_t getBit(const uint16_t pattern, uint32_t idx) {
  return pattern >> idx & 0x1;
}

uint8_t getBit(const uint32_t pattern, uint32_t idx) {
  return pattern >> idx & 0x1;
}

void setBit(uint8_t* pattern, uint32_t idx, uint8_t val) {
  uint8_t bitidx = idx % 8;
  uint8_t byteidx = idx / 8;
  *(pattern + byteidx) = (*(pattern + byteidx) & ~(1 << bitidx)) | (val << bitidx);
}

void setBit(uint8_t* pattern, uint32_t idx) {
  uint8_t bitidx = idx % 8;
  uint8_t byteidx = idx / 8;
  *(pattern + byteidx) |= (0x1 << bitidx);
}

void serial_printBits(const uint8_t* bits, uint32_t length) {
  for (uint32_t i = 0; i < length; i++) {
    Serial.printf("%i", getBit(bits, length - 1 - i));
  }
  Serial.printf("\n");
}

void serial_printBitsOffset(const uint8_t* bits, uint32_t length, uint32_t offset) {
  for (uint32_t i = 0; i < offset; i++) {
    Serial.printf(" ");
  }
  for (uint32_t i = 0; i < length; i++) {
    Serial.printf("%i", getBit(bits, length - 1 - i));
  }
  Serial.printf("\n");
}

/**
* INPLACE (Frees passed bit pattern)
*/
uint8_t* reverseBits(uint8_t* pattern, uint32_t len) {
  uint8_t* out = (uint8_t*)calloc(bitLenToByteLen(len), 1);
  for (uint32_t i = 0; i < len; i++) {
    setBit(out, i, getBit(pattern, (len - 1) - i));
  }
  free(pattern);
  return out;
}
#pragma endregion

#endif