/*
 * RF_custom_functions.c
 *
 * Created: 23.05.2020 16:53:54
 *  Author: Mintytail
 */ 

#include "RF custom functions.h"
#include "KagamiCore/RF functions.h"
#include "KagamiCore/RF protocol.h"
#include <avr/pgmspace.h>
#include "KagamiCore/defines.h"
#include <avr/interrupt.h>
#include "KagamiCore/Settings.h"

typedef struct {
	volatile uint8_t *port;
	uint8_t pin;
} gpio_pin;

typedef struct {
	gpio_pin pin;
	uint8_t unit;
	uint8_t function;
} tMapFunctionToPinItem;

#define MAP_SIZE 10
const tMapFunctionToPinItem map[MAP_SIZE];

/*ISR(TIMER0_OVF_vect) {
	portServo &= ~_BV(poServo);
}

ISR(TIMER0_COMPA_vect) {
	portServo |= _BV(poServo);
}*/

void RFCustomFunctionsInit() {
	DDRD |= (1 << PORTD5) | (1 << PORTD0) | (1 << PORTD1) | (1 << PORTD2);
	DDRD &= ~((1 << PIND3) | (1 << PIND4));
	DDRB |= (1 << PORTB7);
	DDRC |= (1 << PORTC3) | (1 << PORTC4) | (1 << PORTC5);
	// timer for the servo
	//TCCR0A = 0;
	//TCCR0B = (1 << CS02) | (0 << CS01) | (1 << CS00); // clkio/1024
	//OCR0A = 0;
	//TIMSK0 = _BV(TOIE0) | _BV(OCIE0A);
}

bool findPin(const uint8_t unit, const uint8_t function, gpio_pin *output) {
	for (int i = 0; i < MAP_SIZE; i++) {
		uint8_t u = pgm_read_byte(&(map[i].unit));
		if (unit != u) continue;
		uint8_t f = pgm_read_byte(&(map[i].function));
		if (function != f) continue;
		// found it
		output->port = pgm_read_ptr(&(map[i].pin.port));
		output->pin = pgm_read_byte(&(map[i].pin.pin));
		return true;
	}
	return false;
}

uint8_t readPin(const uint8_t unit, const uint8_t function, const scString *request, sString *response) {
	(void) request;
	gpio_pin pin;
	if (! findPin(unit, function, &pin)) return 0x80;
	response->length = 1;
	response->data[0] = 0;
	if (*pin.port & _BV(pin.pin)) response->data[0] = 1;
	return ercOk;
}

uint8_t writePin(const uint8_t unit, const uint8_t function, const scString *request, sString *response) {
	(void) response;
	if (1 != request->length) return ercBadRequestData;
	gpio_pin pin;
	if (! findPin(unit, function, &pin)) return 0x80;
	if (0 == request->data[0]) *pin.port &= ~_BV(pin.pin);
	else if (1 == request->data[0]) *pin.port |= _BV(pin.pin);
	else return ercBadRequestData;
	return ercOk;
}

uint8_t nodePin(const uint8_t unit, const uint8_t function, const scString *request, sString *response) {
	if (0 == request->length) return readPin(unit, function, request, response);
	else return writePin(unit, function, request, response);
}

uint8_t readRegister(const uint8_t unit, const uint8_t function, const scString *request, sString *response) {
	response->length = 1;
	response->data[0] = OCR0A;
	return ercOk;
}

uint8_t writeRegister(const uint8_t unit, const uint8_t function, const scString *request, sString *response) {
	(void) response;
	if (1 != request->length) return ercBadRequestData;
	OCR0A = request->data[0];
	return ercOk;
}

uint8_t nodeRegister(const uint8_t unit, const uint8_t function, const scString *request, sString *response) {
	if (0 == request->length) return readRegister(unit, function, request, response);
	else return writeRegister(unit, function, request, response);
}

const PROGMEM tMapFunctionToPinItem map[MAP_SIZE] = {
	{ .unit = 1, .function = 0x10, .pin = {.port = &PORTB, .pin = PORTB7} },
	{ .unit = 1, .function = 0x12, .pin = {.port = &PORTD, .pin = PORTD5} },
	{ .unit = 1, .function = 0x14, .pin = {.port = &PIND, .pin = PIND3} },
	{ .unit = 1, .function = 0x16, .pin = {.port = &PIND, .pin = PIND4} },
	{ .unit = 1, .function = 0x18, .pin = {.port = &PORTD, .pin = PORTD0} },
	{ .unit = 1, .function = 0x1a, .pin = {.port = &PORTD, .pin = PORTD1} },
	{ .unit = 1, .function = 0x1c, .pin = {.port = &PORTD, .pin = PORTD2} },
	{ .unit = 1, .function = 0x1e, .pin = {.port = &PORTC, .pin = PORTC3} },
	{ .unit = 1, .function = 0x20, .pin = {.port = &PORTC, .pin = PORTC4} },
	{ .unit = 1, .function = 0x22, .pin = {.port = &PORTC, .pin = PORTC5} },	
};

const PROGMEM tRFCodeFunctionItem U1Functions[fU1Count] = {
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x10,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = true,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x12,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = true,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x14,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = true,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x16,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = true,
		.type.nodeType.writable = false
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x18,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = true,
		.type.nodeType.writable = false
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x1a,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = false,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x1c,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = false,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x1e,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = false,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x20,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = false,
		.type.nodeType.writable = true
	},
	{
		.dataId.data.type = ediNode,
		.dataId.data.dataId = 0x22,
		.function = &nodePin,
		.type.nodeType.dataType = edtBool,
		.type.nodeType.readable = false,
		.type.nodeType.writable = true
	},
};

const PROGMEM tUnit CRFUnits[unitsCount] = {
	{ .length = fU1Count, .functions = U1Functions, .description = esU1Description },
};
