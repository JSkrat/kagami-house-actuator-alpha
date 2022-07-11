/*
 * Actuator Alpha.c
 *
 * Created: 04.07.2020 22:09:39
 * Author : Mintytail
 */ 

#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include "KagamiCore/RF model.h"
#include "RF custom functions.h"
#include "KagamiCore/RF functions.h"
#include "KagamiCore/advertisement.h"

int main(void)
{
	// disable comparator
	ACSR |= _BV(ACD);
	rf_init();
	functions_init(CRFUnits, unitsCount);
	RFCustomFunctionsInit();
	advertisement_init();
	set_sleep_mode(SLEEP_MODE_IDLE);
	sei();
	
	while (1) {
		advertisement_process();
		sleep_mode();
	}
}
