#ifndef _H_JMTC1G2
#define _H_JMTC1G2

#include "bitwise.h"

// Reception Layer Stuff
// Revieved data in radio modulation
////////////////////////////////////
//#define FM0_LEN 2 TODO IMPL

/**
 * Decode until invalidation point then stop
 * 
 * TODO actually stop on violation
 */
uint8_t* fm0Decode(uint8_t* packet, uint32_t len, uint32_t* outlen) {
  uint8_t olen = 1 + (len/16);
  uint8_t* out = (uint8_t*)calloc(olen, 1);
  uint32_t bitPos = 0;
  for (uint8_t j = 0; j < len; j++) {
    uint8_t thing = 0;
    thing ^= getBit(packet, j++);
    thing ^= getBit(packet, j)<<1;
    if (thing == (0b00 & 0b11) || thing == (~0b00 & 0b11)) {
      setBit(out, bitPos++, 1);
    } else {
      setBit(out, bitPos++, 0);
    }
    //serial_printBits(out, bitPos);
  }
  *outlen = bitPos;
  return out;
}

// Transmission Layer Stuff
// I.e. In radio time at radio modulation
//////////////////////////////////////////
#pragma region Transmission
//Modulate value
#define modulate false

// Should work under standard of modulate
// Assumes datarate = 1/2 TARI
// All of these are static, but you cannot pass pointers of a #define
#define pielen_0 2
#define pielen_1 4

//Timings
//12.5ms in bits
#define delimtimeinbits 1
//TRcal (last bit is zero)
//TODO MAKE WORK
//8/(16*12.5u)=40k
//Thus it changes once every 2 cc1101 samples i.e. good for sync
#define trcalbits 16

uint8_t* pieEncode(uint8_t* packet, uint32_t len, uint32_t* outlen) {
  uint8_t olen = 1 + ((len * min(pielen_0, pielen_1)) / 8);
  uint8_t* out = (uint8_t*)calloc(olen, 1);
  uint32_t bitPos = 0;
  for (uint8_t j = 0; j < len; j++) {
    uint8_t curr = getBit(packet, j);
    if (curr) {
      if (bitPos + pielen_1 >= olen * 8) {
        uint8_t* exparr = expandArray(out, olen, olen + 1);
        olen = olen + 1;
        free(out);
        out = exparr;
      }
      setBit(out, bitPos++, modulate);
      for (uint8_t i = 0; i < pielen_1 - 1; i++) {
        setBit(out, bitPos++, !modulate);
      }
    }
    else {
      if (bitPos + pielen_0 >= olen * 8) {
        uint8_t* exparr = expandArray(out, olen, olen + 1);
        olen = olen + 1;
        free(out);
        out = exparr;
      }
      setBit(out, bitPos++, modulate);
      for (uint8_t i = 0; i < pielen_0 - 1; i++) {
        setBit(out, bitPos++, !modulate);
      }
    }
  }
  *outlen = bitPos;
  return out;
}

uint8_t* appendPreamble(uint8_t* orig, uint32_t len, uint32_t* outlen) {
  uint8_t* out = (uint8_t*)calloc(bitLenToByteLen(len + delimtimeinbits + pielen_0 + pielen_0 + pielen_1 + trcalbits), 1);
  uint32_t bitPos = 0;
  for (int i = 0; i < len; i++) {
    setBit(out, bitPos++, getBit(orig, i));
  }
  setBit(out, bitPos++, modulate);
  for (int i = 0; i < trcalbits - 1; i++) {
    setBit(out, bitPos++, !modulate);
  }
  setBit(out, bitPos++, modulate);
  for (int i = 0; i < pielen_0 + pielen_1 - 1; i++) {
    setBit(out, bitPos++, !modulate);
  }
  setBit(out, bitPos++, modulate);
  for (int i = 0; i < pielen_0 - 1; i++) {
    setBit(out, bitPos++, !modulate);
  }
  for (int i = 0; i < delimtimeinbits; i++) {
    setBit(out, bitPos++, modulate);
  }
  int maxBits = bitLenToByteLen(len + delimtimeinbits + pielen_0 + pielen_1 + trcalbits)*8;
  for (int i = 0; bitPos < maxBits; i++) {
    setBit(out, bitPos++, !modulate);
  }
  *outlen = bitPos;
  return out;
}
#pragma endregion

// CRC
//////////////////////
#pragma region CRC

#define crc5poly 0x09
#define crc5pres 0x09  

#define crc16poly 0x1021
#define crc16pres 0xFFFF

uint32_t calculateCRC(uint8_t* packet, uint32_t len, uint32_t poly, uint32_t preset, uint8_t crclen) {
  setBit((uint8_t*)&poly, crclen, 1);
  uint8_t* intermediate = (uint8_t*)calloc(bitLenToByteLen(len + crclen), 1);
  uint32_t bitPos = crclen;
  for (uint32_t i = 0; i < len; i++) {
    setBit(intermediate, bitPos++, getBit(packet, i));
    
  }
#ifdef CRCDEBUG
  printBits(out, len + crclen);
#endif
  uint32_t compare = 0;
  for (int i = 0; i <= crclen; i++) {
    setBit((uint8_t*)&compare, crclen - i, getBit(intermediate, bitPos - i));
  }
  compare = compare ^ preset;
#ifdef CRCDEBUG
  printBits((uint8_t*)&preset, crclen);
#endif
  for (int i = 0; i <= crclen; i++) {
    setBit(intermediate, bitPos - i, getBit((uint8_t*)&compare, crclen - i));
  }
  bitPos--;
  while (bitPos >= crclen) {
    if (getBit(intermediate, bitPos) == 1) {
#ifdef CRCDEBUG
      printBits(out, len + crclen);
      printBitsOffset((uint8_t*)&poly, crclen + 1, len + crclen - bitPos - 1);
#endif
      uint32_t compare = 0;
      for (int i = 0; i <= crclen; i++) {
        setBit((uint8_t*)&compare, crclen - i, getBit(intermediate, bitPos - i));
      }
      compare = compare ^ poly;
      for (int i = 0; i <= crclen; i++) {
        setBit(intermediate, bitPos - i, getBit((uint8_t*)&compare, crclen - i));
      }
    }
    bitPos--;
  }
#ifdef CRCDEBUG
  printBits(out, len + crclen);
#endif
  uint32_t out2 = 0;
  for (int i = 0; i < crclen; i++) {
    setBit((uint8_t*)&out2, i, getBit(intermediate, i));
  }
  free(intermediate);
  return out2;
}

/**
* Calculates the crc16 for a given packet
*
* @param packet The packet to calc the CRC16 of
* @param len BIT Length of the packet
*/
uint16_t calcCRC16(uint8_t* packet, uint32_t len) {
  return calculateCRC(packet, len, crc16poly, crc16pres, 16);
}

/**
* Calculates the crc5 for a given packet
*
* @param packet The packet to calc the CRC5 of
* @param len BIT Length of the packet
*/
uint8_t calcCRC5(uint8_t* packet, uint32_t len) {
  return calculateCRC(packet, len, crc5poly, crc5pres, 5);
}

uint8_t* appendCRC16(uint8_t* packet, uint32_t len) {
  uint16_t crc = calcCRC16(packet, len);
  uint8_t* out = (uint8_t*)calloc(bitLenToByteLen(len + 5), 1);
  uint8_t* crcp = (uint8_t*)&crc;
  uint32_t bitPos = 0;
  for (uint8_t i = 0; i < 16; i++) {
    setBit(out, bitPos++ , getBit(crcp, i));
  }
  for (uint8_t i = 0; i < len; i++) {
    setBit(out, bitPos++, getBit(packet, i));
  }
  free(packet);
  return out;
}

uint8_t* appendCRC5(uint8_t* packet, uint32_t len) {
  uint16_t crc = calcCRC5(packet, len);
  uint8_t* out = (uint8_t*)calloc(bitLenToByteLen(len + 5), 1);
  uint8_t* crcp = (uint8_t*)&crc;
  uint32_t bitPos = 0;
  for (uint8_t i = 0; i < 5; i++) {
    setBit(out, bitPos++, getBit(crcp, i));
  }
  for (uint8_t i = 0; i < len; i++) {
    setBit(out, bitPos++, getBit(packet, i));
  }
  free(packet);
  return out;
}
#pragma endregion


// Packet Formation
///////////////////
#pragma region Command
#define COMMAND_SELECT      0b1010
#define COMMAND_QUERY       0b1000
#define COMMAND_ACK         0b01

#define SELECT_TARGET_S0    0b000
#define SELECT_TARGET_S1    0b001
#define SELECT_TARGET_S2    0b010
#define SELECT_TARGET_S3    0b011
#define SELECT_TARGET_SL    0b100

/**
See Page 56 of EPCC1G2 Spec
*/
#define SELECT_ACTION_IFF   0b000
#define SELECT_ACTION_IF    0b001
#define SELECT_ACTION_NOTIF   0b010
#define SELECT_ACTION_NEG   0b011
#define SELECT_ACTION_IFFNOT  0b100
#define SELECT_ACTION_NOTIFNOT  0b101
#define SELECT_ACTION_IFNOT   0b110
#define SELECT_ACTION_NEGNOT  0b111

#define MEMBANK_RFU       0b00
#define MEMBANK_EPC       0b01
#define MEMBANK_TID       0b10
#define MEMBANK_USR       0b11

#define QUERY_DR_8        0b0
#define QUERY_DR_64D3     0b1

#define QUERY_M_1       0b00
#define QUERY_M_2       0b01
#define QUERY_M_4       0b10
#define QUERY_M_8       0b11

#define QUERY_TRext_NOP     0b0
#define QUERY_TRext_PILOT   0b1

#define QUERY_SEL_ALL     0b00
#define QUERY_SEL_ALL2      0b01
#define QUERY_SEL_NOTSEL    0b10
#define QUERY_SEL_SEL     0b11

#define QUERY_SES_S0      0b00
#define QUERY_SES_S1      0b01
#define QUERY_SES_S2      0b10
#define QUERY_SES_S3      0b11

#define QUERY_TGT_A       0b0
#define QUERY_TGT_B       0b1

/**
 * Generates a select packet as per EPC Gen2 Spec
 * 
 */
void genSelect(/*out*/ uint8_t* packet, /*out*/ uint32_t* len, uint8_t target, uint8_t action,
  uint8_t bank, uint8_t* pointer, uint8_t pointerLen, uint8_t* mask, uint8_t maskLen, uint8_t trunc) {
  //todo
}

/**
* Generates a select packet as per EPC Gen2 Spec
*
*/
uint8_t* genQuery(/*out*/ uint32_t* len, uint8_t dr, uint8_t m, uint8_t TRext, uint8_t sel, uint8_t session, uint8_t target, uint8_t Q) {
  *len = 22;
  uint8_t* packet = (uint8_t*)calloc(bitLenToByteLen(*len), 1);
  uint32_t bitPos = 17;
  bitPos--;
  for (uint8_t i = 0; i < 4; i++) {
    setBit(packet, bitPos--, getBit(COMMAND_QUERY, 3-i));
  }
  setBit(packet, bitPos--, getBit(dr, 0));
  setBit(packet, bitPos--, getBit(m, 1));
  setBit(packet, bitPos--, getBit(m, 0));
  setBit(packet, bitPos--, getBit(TRext, 0));
  setBit(packet, bitPos--, getBit(sel, 1));
  setBit(packet, bitPos--, getBit(sel, 0));
  setBit(packet, bitPos--, getBit(session, 1));
  setBit(packet, bitPos--, getBit(session, 0));
  setBit(packet, bitPos--, getBit(target, 0));
  for (uint8_t i = 0; i < 4; i++) {
    setBit(packet, bitPos--, getBit(Q, 3 - i));
  }
  packet = appendCRC5(packet, 17);
  return packet;
}

uint8_t* genAck(/*out*/ uint32_t* len, uint16_t rn16) {
  *len = 18;
  uint8_t* packet = (uint8_t*)calloc(bitLenToByteLen(*len), 1);
  uint32_t bitPos = *len;
  for (uint8_t i = 0; i < 2; i++) {
    setBit(packet, bitPos--, getBit(COMMAND_ACK, 2-i));
  }
  for (uint8_t i = 0; i < 16; i++) {
    setBit(packet, bitPos--, getBit(rn16, 16-i));
  }
  return packet;
}

#pragma endregion

#endif
