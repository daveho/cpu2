package io.github.daveho.logicsim;

/**
 * What mode a device pin is currently in.
 * Pin mode is a dynamic feature of a pin.  E.g.,
 * a tristate output could be in either output mode
 * or High-Z mode depending on the state of the device.
 */
public enum PinMode {
	INPUT,
	OUTPUT,
	HI_Z,
}
