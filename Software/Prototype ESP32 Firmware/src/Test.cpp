#include <Arduino.h>
#include <SPI.h>
#include "epcC1G2.h"
#include "JMT_CC1101.h"
#include "config.h"


SPIClass* backingSPI = NULL;

JCC1101* cctransmit;
JCC1101* ccrecieve;

uint32_t rxdelay = 500;
uint8_t BSCFG_OVERRIDE = CC1101_CONFIG[0x1A];

void setup() {
  // put your setup code here, to run once:
  backingSPI = new SPIClass(VSPI);
  backingSPI->begin();
  cctransmit = new JCC1101(backingSPI, 5);
  ccrecieve = new JCC1101(backingSPI, 17);


  Serial.begin(256000);
}

void awaitConnect() {
  uint16_t tgt;

  Serial.printf("Checking TX is connected... \n");
  do {
    //Waiting for startup
    tgt = (CC1101_SREG_MARCSTATE<<8);
    cctransmit->command(2, (uint8_t*)&tgt);
    Serial.printf("[tx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);
    Serial.printf("[tx] SPI Serial (HiByte) Status %#08x\n", (tgt >> 8) & 0xFF);
    delay(10);
  } while ((tgt & 0xFF) == (0x00&0xFF)); // Marcstate != 0 during running; thus 0 marcstate = no chip
    Serial.printf("Checking TX is connected... (DONE)\n");


  Serial.printf("Checking RX is connected\n");
  do {
    //Waiting for startup
    tgt = (CC1101_SREG_MARCSTATE<<8);
    ccrecieve->command(2, (uint8_t*)&tgt);
    Serial.printf("[rx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);
    Serial.printf("[rx] SPI Serial (HiByte) Status %#08x\n", (tgt >> 8) & 0xFF);
    delay(10);
  } while ((tgt & 0xFF) == (0x00&0xFF)); // Marcstate != 0 during running; thus 0 marcstate = no chip
  Serial.printf("Checking RX is connected... (DONE)\n");
}

void initTransmit(uint8_t chan) {
  // Reset CC1101
  cctransmit->command(CC1101_CMD_SRES);
  
  //Frequency config
  for (int i = 0; i < 0x2F; i++) {
    uint16_t tgt = (CC1101_MODE_WRITE|i)<<8|CC1101_CONFIG[i];
    cctransmit->command(2, (uint8_t*)&tgt);
  }

  uint16_t tgt = (CC1101_MODE_WRITE|CC1101_REG_CHANNR)<<8|(chan*2);
  cctransmit->command(2, (uint8_t*)&tgt);

  //POWER
  uint8_t* patablecmd = (uint8_t*)calloc(3, 1);
  *(patablecmd+0) = CC1101_SREG_PATABLE|CC1101_MODE_WRITE|CC1101_MODE_BURST;
  *(patablecmd+1) = 0x50;
  *(patablecmd+2) = 0xC0;
  cctransmit->commandRev(3, patablecmd);
  free(patablecmd);
}

void initRecieve(uint8_t chan) {
  // Reset CC1101
  ccrecieve->command(CC1101_CMD_SRES);
  
  //Frequency config
  for (int i = 0; i < 0x2F; i++) {
    uint16_t tgt = (CC1101_MODE_WRITE|i)<<8|CC1101_CONFIG[i];
    ccrecieve->command(2, (uint8_t*)&tgt);
  }

  uint16_t tgt = (CC1101_MODE_WRITE|CC1101_REG_CHANNR)<<8|(chan*2);
  ccrecieve->command(2, (uint8_t*)&tgt);

  tgt = (CC1101_MODE_WRITE|CC1101_REG_MDMCFG2)<<8|0x31;
  ccrecieve->command(2, (uint8_t*)&tgt);

  tgt = (CC1101_MODE_WRITE|CC1101_REG_BSCFG)<<8|BSCFG_OVERRIDE;
  ccrecieve->command(2, (uint8_t*)&tgt);

  //POWER
  uint8_t* patablecmd = (uint8_t*)calloc(3, 1);
  *(patablecmd+0) = CC1101_SREG_PATABLE|CC1101_MODE_WRITE|CC1101_MODE_BURST;
  *(patablecmd+1) = 0x50;
  *(patablecmd+2) = 0xC0;
  ccrecieve->commandRev(3, patablecmd);
  free(patablecmd);
}

uint8_t* genOtaQuery(uint8_t* retlen) {
  //DATA
  Serial.printf("Creating a query packet\n");
  uint32_t len;
  uint8_t* query = genQuery(&len, QUERY_DR_8, QUERY_M_1, QUERY_TRext_PILOT, QUERY_SEL_ALL, QUERY_SES_S0, QUERY_TGT_A, 0);
  uint32_t otalen;
  uint8_t* ota = pieEncode(query, len, &otalen);
  free(query);
  uint8_t* out = appendPreamble(ota, otalen, &otalen);
  free(ota);
  *retlen = otalen;
  return out;
}

void oldmain() {
  awaitConnect();

  initTransmit(1);
  initRecieve(1);

  uint16_t tgt;

  uint8_t otalen = 0;
  uint8_t* ota = genOtaQuery(&otalen);

  uint32_t cmdlen = 65;
  uint8_t* cmd = (uint8_t*)calloc(cmdlen, 1);
  int cmdoff = 0;
  *(cmd+(cmdoff++)) = CC1101_SREG_FIFO|CC1101_MODE_WRITE|CC1101_MODE_BURST;
  for (int i = 0; i<20; i++) {
    *(cmd+(cmdoff++)) = 0xFF;
  }
  for (int i = 0; i<bitLenToByteLen(otalen); i++) {
    *(cmd+(cmdoff++))=*(ota+bitLenToByteLen(otalen)-1-i);
  }
  while (cmdoff<cmdlen) {
    *(cmd+(cmdoff++))=0xFF;
  }
  Serial.printf("Transmitting: ");
  serial_printBits(cmd, (cmdlen)*8);
  cctransmit->commandRev(cmdlen, cmd);
  free(cmd);
  free(ota);

  tgt = (CC1101_SREG_TXBYTES<<8);
  cctransmit->command(2, (uint8_t*)&tgt);
  Serial.printf("[tx] SPI Serial (LoByte) Remaining TX BYTES %#08x\n", tgt & 0x7F);

  Serial.printf("SPI Serial transfer complete\n");

  cctransmit->command(CC1101_CMD_SIDLE);

  
  tgt = (CC1101_SREG_MARCSTATE<<8);
  cctransmit->command(2, (uint8_t*)&tgt);

  Serial.printf("[tx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);
  Serial.printf("[tx] SPI Serial (HiByte) Status %#08x\n", (tgt >> 8) & 0xFF);

  //TRANSMIT
  Serial.printf("SPI Transmit request...\n");
  cctransmit->command(CC1101_CMD_STX);
  delayMicroseconds(rxdelay);
  ccrecieve->command(CC1101_CMD_SRX);


  Serial.printf("Waiting for transmit start...\n");
  do {
    tgt = (CC1101_SREG_MARCSTATE<<8);
    cctransmit->command(2, (uint8_t*)&tgt);
    Serial.printf("[tx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0x1F);
  } while (((tgt & 0x1F) != 0x13) && ((tgt & 0x1F) != 0x16));
  Serial.printf("Waiting for transmit start... (DONE)\n");
  Serial.printf("[tx] SPI Serial (HiByte) Status %#08x\n", (tgt >> 8) & 0xFF);
  

/*

*/
  Serial.printf("Waiting for transmit finish...\n");
  tgt = (CC1101_SREG_MARCSTATE<<8);
  cctransmit->command(2, (uint8_t*)&tgt);
  Serial.printf("[tx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);
  while ((tgt & 0x1F) != 0x16) {
    tgt = CC1101_SREG_MARCSTATE<<8;
    cctransmit->command(2, (uint8_t*)&tgt);
    Serial.printf("[tx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);
    delay(10);
  }
  Serial.printf("Waiting for transmit finish... (DONE)\n");

  tgt = (CC1101_SREG_TXBYTES<<8);
  cctransmit->command(2, (uint8_t*)&tgt);
  Serial.printf("[tx] SPI Serial (LoByte) Remaining TX BYTES %#08x\n", tgt & 0x7F);
  
  Serial.printf("SPI FIFO TX FLUSH...\n");

  
  tgt = (CC1101_CMD_SFTX<<8);
  cctransmit->command(2, (uint8_t*)&tgt);

  Serial.printf("[tx] SPI Serial (HiByte) Status %#08x\n", (tgt >> 8) & 0xFF);

  tgt = (CC1101_SREG_MARCSTATE<<8);
  cctransmit->command(2, (uint8_t*)&tgt);

  Serial.printf("[tx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);

  //BACKLINK READ

  Serial.printf("SPI FIFO RX PULL...\n");


  tgt = (CC1101_SREG_MARCSTATE<<8);
  ccrecieve->command(2, (uint8_t*)&tgt);
  Serial.printf("[rx] SPI Serial (HiByte) Status %#08x\n", (tgt >> 8) & 0xFF);
  Serial.printf("[rx] SPI Serial (LoByte) MARCSTATE %#08x\n", tgt & 0xFF);

  tgt = (CC1101_SREG_RXBYTES<<8);
  ccrecieve->command(2, (uint8_t*)&tgt);
  Serial.printf("[rx] SPI Serial (LoByte) Remaining RX BYTES %#08x\n", tgt & 0x7F);
  uint8_t rxlen = tgt & 0x7F;

  if (rxlen > 0) {
    uint8_t* rx = (uint8_t*)calloc(rxlen, 1);
    *rx = CC1101_SREG_FIFO|CC1101_MODE_READ|CC1101_MODE_BURST;

    ccrecieve->commandRev(rxlen, rx);
    serial_printBits(rx+1, (rxlen-1)*8);//don't care about status

    Serial.printf("FM0 Decoding...");

    uint32_t fm0Len = 0;
    uint8_t* fm0 = fm0Decode(rx+1, 3*8, &fm0Len);

    serial_printBits(fm0, fm0Len);
    free(fm0);

    free(rx);

    tgt = (CC1101_CMD_SFRX<<8);
    ccrecieve->command(2, (uint8_t*)&tgt);
  } else {
    //Reset
    tgt = (CC1101_CMD_SRES<<8);
    ccrecieve->command(2, (uint8_t*)&tgt);
  }

  Serial.printf("Ping complete!");

}

void swap() {
  JCC1101* temp = cctransmit;
  cctransmit = ccrecieve;
  ccrecieve = temp;
}

//Problem? Stackoverflow 
// https://stackoverflow.com/questions/9072320/split-string-into-string-array
String getValue(String data, char separator, int index)
{
  int found = 0;
  int strIndex[] = {0, -1};
  int maxIndex = data.length()-1;

  for(int i=0; i<=maxIndex && found<=index; i++){
    if(data.charAt(i)==separator || i==maxIndex){
        found++;
        strIndex[0] = strIndex[1]+1;
        strIndex[1] = (i == maxIndex) ? i+1 : i;
    }
  }

  return found>index ? data.substring(strIndex[0], strIndex[1]) : "";
}

void loop() {
  if (Serial.available()>0) {
    String cmd = Serial.readString();
    cmd.trim();
    Serial.printf(cmd.c_str());
    Serial.printf("\n");
    if (cmd == "ping") { 
      Serial.printf("Pinging...\n");
      oldmain();
    } else if (cmd == "swap") { 
      Serial.printf("Swapping...\n");
      swap(); 
      Serial.printf("Done!\n");
    } else if (getValue(cmd, ' ', 0) == "update") { 
      if (getValue(cmd, ' ', 1) == "rxdelay") {
         Serial.printf("Updating RX Delay...\n");
         rxdelay = getValue(cmd, ' ', 2).toInt();
         Serial.printf("RXDelay set to %u\n", rxdelay);
      }
      if (getValue(cmd, ' ', 1) == "bscfg") {
         Serial.printf("Updating bscfg...\n");
         BSCFG_OVERRIDE = getValue(cmd, ' ', 2).toInt();
         Serial.printf("bscfg set to %x\n", BSCFG_OVERRIDE);
      }
    }
  } else {
    delay(50);
  }

}
