#include <SPI.h>

// ==========================================
// DEFINICIÓN DE PINES 
// ==========================================
// D8 (SCK) y D10 (MOSI) los maneja SPI.begin() automáticamente -> CLK y DATA
// D9 (MISO) NO se usa como MISO real (el ADF4351 no responde por SPI),
// pero el core SAMD21 lo reconfigura como periférico SPI al llamar SPI.begin().
// Por eso PIN_LNA_ENABLE (=D9) se reclama como GPIO DESPUÉS de SPI.begin(),
// nunca antes, o SPI.begin() le pisa la configuración de salida.
//
// Pines LIBRES (no usados): D1, D3, D5

const int PIN_LED_LIFE = 0;  // D0 - LED parpadeante (prueba de vida)
const int PIN_LED_LNA  = 2;  // D2 - LED indicador LNA_EN
const int PIN_LED_PLL  = 4;  // D4 - LED indicador PLL_EN

const int PIN_PLL_ENABLE = 6;  // D6 - Enable PLL, activo alto
const int PIN_ADF_LE     = 7;  // D7 - Latch Enable del ADF4351 (pin 3 del ADF4351)
const int PIN_LNA_ENABLE = 9;  // D9 (MISO) - Enable LNA, activo alto

// ==========================================
// REGISTROS ADF4351 PARA 580 MHz (Ref: 10MHz)
// ==========================================
// Generados con el software oficial ADF435x de Analog Devices y verificados
// bit a bit: INT=232, FRAC=0, MOD=2, R=1, fPFD=10MHz, divisor de salida=4
// -> VCO=2320MHz, RFout=580.000 MHz exactos.
const uint32_t registers[6] = {
  0x00580005, // Registro 5
  0x00A5003C, // Registro 4
  0x00400003, // Registro 3
  0x08005F42, // Registro 2
  0x00008011, // Registro 1
  0x00740000  // Registro 0 - Este activa todo al final
};

// Variables para el LED de vida
unsigned long previousMillis = 0;
const long blinkInterval = 500;

// Función para enviar 32 bits por SPI
void writeADF4351(uint32_t data) {
  digitalWrite(PIN_ADF_LE, LOW);

  SPI.transfer((data >> 24) & 0xFF);
  SPI.transfer((data >> 16) & 0xFF);
  SPI.transfer((data >> 8) & 0xFF);
  SPI.transfer(data & 0xFF);

  digitalWrite(PIN_ADF_LE, HIGH);
  delayMicroseconds(1);
  digitalWrite(PIN_ADF_LE, LOW);
}

// =========================================================================
// CONFIGURACIÓN DEL WATCHDOG (WDT) NATIVO PARA ARM SAMD21 (XIAO)
// =========================================================================
void setupWDT() {
  WDT->CTRL.reg &= ~WDT_CTRL_ENABLE;
  while (WDT->STATUS.bit.SYNCBUSY);

  WDT->CONFIG.reg = 0x8; // ~2048 ciclos (~2 segundos)

  WDT->CTRL.reg |= WDT_CTRL_ENABLE;
  while (WDT->STATUS.bit.SYNCBUSY);
}

void feedWDT() {
  if (!WDT->STATUS.bit.SYNCBUSY) {
    WDT->CLEAR.reg = 0xA5;
  }
}

void setup() {
  // 1. Pines que NO comparten función con el SPI: configurar ya de entrada
  pinMode(PIN_LED_LNA, OUTPUT);
  pinMode(PIN_LED_PLL, OUTPUT);
  pinMode(PIN_LED_LIFE, OUTPUT);
  pinMode(PIN_PLL_ENABLE, OUTPUT);
  pinMode(PIN_ADF_LE, OUTPUT);

  digitalWrite(PIN_LED_LNA, LOW);
  digitalWrite(PIN_LED_PLL, LOW);
  digitalWrite(PIN_LED_LIFE, LOW);
  digitalWrite(PIN_PLL_ENABLE, LOW);
  digitalWrite(PIN_ADF_LE, LOW);

  // 2. Iniciar SPI PRIMERO (esto toma D8/SCK, D9/MISO, D10/MOSI como periférico)
  SPI.begin();
  SPI.beginTransaction(SPISettings(500000, MSBFIRST, SPI_MODE0));

  // 3. Recién ACA reclamamos D9 como GPIO de salida para LNA_ENABLE,
  //    después de SPI.begin(), para que no nos pise la configuración.
  pinMode(PIN_LNA_ENABLE, OUTPUT);
  digitalWrite(PIN_LNA_ENABLE, LOW);

  // 4. Temporización de espera inicial
  delay(2000);

  // 5. Habilitar el ADF4351 (LNA sigue apagado)
  digitalWrite(PIN_PLL_ENABLE, HIGH);
  delay(10);

  // 6. Enviar secuencia de registros (R5 a R0)
  for (int i = 0; i < 6; i++) {
    writeADF4351(registers[i]);
    delay(1);
  }

  // 7. LED que indica que el PLL fue programado por SPI
  digitalWrite(PIN_LED_PLL, HIGH);

  // 8. Espera de seguridad para el enganche físico de fase
  delay(150);

  // 9. Encender LDO/LNA y su LED indicador
  digitalWrite(PIN_LNA_ENABLE, HIGH);
  digitalWrite(PIN_LED_LNA, HIGH);

  SPI.endTransaction();

  // 10. Watchdog al final del setup
  setupWDT();
}

void loop() {
  feedWDT();

  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= blinkInterval) {
    previousMillis = currentMillis;
    digitalWrite(PIN_LED_LIFE, !digitalRead(PIN_LED_LIFE));
  }
}
