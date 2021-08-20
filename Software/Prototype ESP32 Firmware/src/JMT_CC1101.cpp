#include "JMT_CC1101.h"
#include <Arduino.h>
#include <SPI.h>

uint8_t CC1101_COMMAND(SPIClass* spi, int CSn, uint8_t cmd) {
  spi->beginTransaction(SPISettings(CC1101_GETDR(cmd), MSBFIRST, SPI_MODE0));
  digitalWrite(CSn, LOW);
  uint8_t out = spi->transfer(cmd);
  digitalWrite(CSn, HIGH);
  spi->endTransaction();
  return out;
}

void CC1101_COMMAND(SPIClass* spi, int CSn, int len, uint8_t* dat) {
  spi->beginTransaction(SPISettings(CC1101_GETDR(*dat), MSBFIRST, SPI_MODE0));
  digitalWrite(CSn, LOW);
  for (int i = len-1; i >= 0; i--) {
    *(dat+i) = spi->transfer(*(dat+i));
  }
  digitalWrite(CSn, HIGH);
  spi->endTransaction();
}

void CC1101_COMMAND_REV(SPIClass* spi, int CSn, int len, uint8_t* dat) {
  spi->beginTransaction(SPISettings(CC1101_GETDR(*dat), MSBFIRST, SPI_MODE0));
  digitalWrite(CSn, LOW);
  for (int i = 0; i < len; i++) {
    *(dat+i) = spi->transfer(*(dat+i));
  }
  digitalWrite(CSn, HIGH);
  spi->endTransaction();
}

JCC1101::JCC1101(SPIClass* spi, uint8_t CSn) {
    this->spi = spi;
    this->CSn = CSn;
    pinMode(CSn, OUTPUT);
    digitalWrite(CSn, HIGH);
}

uint8_t JCC1101::command(uint8_t cmd) {
    spi->beginTransaction(SPISettings(CC1101_GETDR(cmd), MSBFIRST, SPI_MODE0));
    digitalWrite(CSn, LOW);
    uint8_t out = spi->transfer(cmd);
    digitalWrite(CSn, HIGH);
    spi->endTransaction();
    return out;
}

void JCC1101::command(int len, uint8_t* dat) {
    spi->beginTransaction(SPISettings(CC1101_GETDR(*dat), MSBFIRST, SPI_MODE0));
    digitalWrite(CSn, LOW);
    for (int i = len-1; i >= 0; i--) {
    *(dat+i) = spi->transfer(*(dat+i));
    }
    digitalWrite(CSn, HIGH);
    spi->endTransaction();
}

void JCC1101::commandRev(int len, uint8_t* dat) {
    spi->beginTransaction(SPISettings(CC1101_GETDR(*dat), MSBFIRST, SPI_MODE0));
    digitalWrite(CSn, LOW);
    for (int i = 0; i < len; i++) {
    *(dat+i) = spi->transfer(*(dat+i));
    }
    digitalWrite(CSn, HIGH);
    spi->endTransaction();
}