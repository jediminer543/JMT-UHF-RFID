//SPI BIT ORDERING
#define JMT_SPI_LSBFIRST = 0;
#define JMT_SPI_MSBFIRST = 1;

//SPI MODE; NICKED FROM ARDUINO
#define JMT_SPI_MODE0 = 0;
#define JMT_SPI_MODE1 = 1;
#define JMT_SPI_MODE2 = 2;
#define JMT_SPI_MODE3 = 3;

/**
 * Standard SPI class
 * 
 * Cross platform
 */
class JMTSPI {
  public:
    virtual void beginTransaction() = 0;
    virtual void endTransaction() = 1;
    virtual uint8_t transfer(uint8_t data) = 2;
} JSPI;

/**
 * Arduino version
 */
class JMTASPI : public JMTSPI {
    SPIClass* spi;
    uint8_t pin;
  public:
    JMTASPI(SPIClass* spi, uint8_t pin) {
      this.spi = spi;
      this.pin = pin;
    }
    virtual void beginTransaction() {
      
    }
    virtual void endTransaction();
    virtual uint8_t transfer(uint8_t data)
} JASPI;
