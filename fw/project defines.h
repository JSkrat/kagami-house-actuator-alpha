/*
 * defines.h
 *
 * Created: 02.01.2019 20:21:14
 *  Author: J-sama
 */ 


#ifndef DEFINES_H_
#define DEFINES_H_

#define F_CPU 8000000

// RF mode
#define BUILD_TYPE BT_SLAVE

// advertisement
#define USE_ADVERTISEMENT
#define ADV_BUTTON_DDR DDRD
#define ADV_BUTTON_PIN PIND6
#define ADV_BUTTON_PORT PORTD
#define ADV_LED_DDR DDRD
#define ADV_LED_PIN PORTD7
#define ADV_LED_PORT PORTD
/*** LEDs ***/
#define portLEDS PORTD
#define poLED_D1 PORTD7
#define poLED_D2 PORTD6

/*** transiever ***/
#define MAC_SIZE 5
#define PAYLOAD_SIZE 32
#define SLAVE_RESPONSE_TIMEOUT_MS 20

#define portTransiever PORTB
#define PORT_IN_TRANSIEVER PINB
#define poTransiever_IRQ PORTB0

/** RF packet **/
/*** encryption ***/
#define RF_ENC_TOTAL 1

#endif /* DEFINES_H_ */