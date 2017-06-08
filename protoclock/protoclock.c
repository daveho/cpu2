#define F_CPU 1000000 // use internal oscillator, set to 1 MHz
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#ifdef USE_LOW_POWER_MODE
#  include <avr/sleep.h>
#endif
#include <util/delay.h>

// Inputs:
//   PB6 - button 0 (mode)
//   PB5 - button 1 (speed)
//   PB4 - button 2 (turbo)
//   PB3 - button 3 (toggle)
//   PB2 - button 4 (reset, asserted when pressed)
// All button inputs are pulled low when pressed.

// Bits of button inputs in port B
#define BTN_MODE_BIT   6
#define BTN_SPEED_BIT  5
#define BTN_TURBO_BIT  4
#define BTN_TOGGLE_BIT 3
#define BTN_RESET_BIT  2

// State bits for buttons
#define BTN_MODE   0
#define BTN_SPEED  1
#define BTN_TURBO  2
#define BTN_TOGGLE 3
#define BTN_RESET  4

#define NUM_BUTTONS 5

// Outputs:
//   PD0 - mode LED (off=auto, on=manual)
//   PD1-PD6 - speed LEDs
//   PB0 - clock signal
//   PB1 - inverted clock signal
//   PA0 - reset signal (asserted low)
//   PA1 - inverted reset signal (asserted high)

#define SPEED_MAX 4

#define INC(v) do { if ((v) < 255) v++; } while (0)

// button input must be stable this many times to be considered
// debounced
#define DEBOUNCE_COUNT 4

#define MODE_MANUAL 0
#define MODE_AUTO   1

// Global variables
uint8_t g_state = 0x7; // current (debounced) button states
uint8_t g_last = 0x7; // last button inputs
uint8_t g_counts[NUM_BUTTONS];
uint8_t g_mode; // 0==manual, 1==auto
uint8_t g_turbo; // 0==turbo off, 1==turbo on
uint8_t g_speed; // 0==slowest, 5==fastest
uint8_t g_clock = 1; // clock signal (high initially to be consistent with toggle)
uint16_t g_ticks;
uint8_t g_restore_manual;
uint8_t g_reset = 1;

// Function to process button presses and releases
void on_change(uint8_t btn);

// Timer interrupt, called 4096 times per second
ISR(TIMER0_OVF_vect) {
	// If restoring to manual output see if clock output is
	// consistent with toggle; if not, we can't restore manual
	// mode yet
	if (g_restore_manual) {
		uint8_t toggle = (g_state & (1 << 2)) != 0;
		if (toggle == g_clock) {
			g_mode = MODE_MANUAL;
			g_restore_manual = 0;
		}
	}

	uint8_t current = 0;

	// Read input pin for specified button
#define CHECK(inbit, btn) \
do { uint8_t statebit = (1 << btn); \
if (PINB & (1 << inbit)) { current |= statebit; } } while (0)

	// Read all button inputs
	CHECK(BTN_MODE_BIT, BTN_MODE);
	CHECK(BTN_SPEED_BIT, BTN_SPEED);
	CHECK(BTN_TURBO_BIT, BTN_TURBO);
	CHECK(BTN_TOGGLE_BIT, BTN_TOGGLE);
	CHECK(BTN_RESET_BIT, BTN_RESET);

	// Update the count associated with specified button
#define UPDATE_COUNT(btn) \
do { uint8_t statebit = (1 << btn); \
if ((current & statebit) == (g_last & statebit)) { INC(g_counts[btn]); } \
else { g_counts[btn] = 0; } } while (0)

	// Update all button counts
	for (uint8_t i = 0; i < NUM_BUTTONS; i++) { UPDATE_COUNT(i); }

	// Process the button: if it's different than the current state,
	// and the debounce count is sufficiently high, register the
	// change
#define PROCESS(btn) \
do { \
	uint8_t statebit = (1 << btn); \
	if (g_counts[btn] >= DEBOUNCE_COUNT && (current & statebit) != (g_state & statebit)) { \
		g_state ^= statebit; \
		on_change(btn); \
	} \
} while (0)

	// Process all button state changes
	for (uint8_t i = 0; i < NUM_BUTTONS; i++) { PROCESS(i); }

	g_last = current;

	// Increment tick counter
	g_ticks++;

	// Update generated clock signal
	if (g_mode == MODE_AUTO) {
		// In auto mode

		// There are 4096 ticks per second.
		// Slowest speed is one clock cycle per two seconds (.5 Hz).
		// Each increased speed level doubles the number
		// of cycles per second.
		uint16_t mask = 0x0FFF >> g_speed;
		if (g_turbo) {
			mask >>= (SPEED_MAX+1);
		}
		if ((g_ticks & mask) == 0) {
			g_clock ^= 0x1;
		}
	}

	// Update outputs

	uint8_t out = 0x80;
#define UPDATE_OUTPUT(bit, value) do { if (value) { out |= (1 << bit); } } while (0)

	UPDATE_OUTPUT(0, g_mode);
	UPDATE_OUTPUT(1, g_turbo);
	UPDATE_OUTPUT(2, g_speed == 0);
	UPDATE_OUTPUT(3, g_speed == 1);
	UPDATE_OUTPUT(4, g_speed == 2);
	UPDATE_OUTPUT(5, g_speed == 3);
	UPDATE_OUTPUT(6, g_speed == 4);

	// Clock output
	if (g_clock) {
		PORTB |= 1;  // clock signal
		PORTB &= ~2; // inverted clock signal
	} else {
		PORTB &= ~1; // clock signal
		PORTB |= 2;  // inverted clock signal
	}

	// Reset output
	if (g_reset) {
		PORTA |= 1;  // reset signal
		PORTA &= ~2; // inverted reset signal
	} else {
		PORTA &= ~1; // reset signal
		PORTA |= 2;  // inverted reset signal
	}

	PORTD = out;
}

int main(void) {
	DDRA = 0x03; // A0,A1 configured as output, all others configured as input
	PORTA = 0xff; // enable pull ups
	DDRB = 0x03; // B0,B1 configured as output, all others configured as input
	PORTB = 0xfd; // enable pull ups (and write 0 to B1, 1 to B0)
	DDRD = 0x7F; // D0-D6 configured as output, others configured as input
	PORTD = 0xff; // enable pull ups (and write 1 to D0)

	// Set up timer interrupt to fire 4096 times per second
	TCCR0B |= (1<<CS00);   // no prescaling
	TIMSK |= (1 << TOIE0); // interrupt on overflow of counter 0

	sei(); // enable interrupts

	for (;;) {
		// ISR does everything
	}

}

void on_change(uint8_t btn) {
	uint8_t val = g_state & (1 << btn);

	if (btn == BTN_MODE && val == 0) {
		// mode button pressed

		if (g_mode == MODE_AUTO) {
			// returning to manual mode has to be done carefully;
			// specifically, we need to make sure that the
			// clock output is consistent with the toggle switch
			g_restore_manual = 1;
		} else {
			// switching from manual to auto is always safe
			g_mode = MODE_AUTO;
		}
	}

	if (btn == BTN_SPEED && val == 0) {
		// speed button pressed
		if (g_speed < SPEED_MAX) {
			g_speed++;
		} else {
			g_speed = 0;
		}

		// reset tick count
		g_ticks = 0;
	}

	if (btn == BTN_TURBO && val == 0) {
		// turbo button pressed
		g_turbo = !g_turbo;

		// reset tick count
		g_ticks = 0;
	}

	if (btn == BTN_TOGGLE && g_mode == MODE_MANUAL) {
		// toggle button pressed or released
		// ignored if not in manual mode
		g_clock = val ? 1 : 0;
	}

	if (btn == BTN_RESET) {
		// Reset can be asserted/de-asserted whenever
		g_reset = val ? 1 : 0;
	}
}
