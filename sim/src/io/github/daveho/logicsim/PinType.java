package io.github.daveho.logicsim;

/**
 * Types of device pin.
 * Pin type is a static feature of a pin.
 */
public enum PinType {
	INPUT,
	OUTPUT,
	OUTPUT_TRISTATE,
	BIDIRECTIONAL,
	BIDIRECTIONAL_TRISTATE,
	POWER_VCC,
	POWER_GND;

	/**
	 * @return initial {@link PinMode} for a pin of this type
	 */
	public PinMode getInitialMode() {
		switch (this) {
		case BIDIRECTIONAL:
			return PinMode.OUTPUT; // device should override initial mode if necessary
		case BIDIRECTIONAL_TRISTATE:
			return PinMode.OUTPUT; // device should override initial mode if necessary
		case INPUT:
			return PinMode.INPUT;
		case OUTPUT:
			return PinMode.OUTPUT;
		case OUTPUT_TRISTATE:
			return PinMode.OUTPUT; // device should override initial mode if necessary
		case POWER_GND:
			return PinMode.INPUT;
		case POWER_VCC:
			return PinMode.INPUT;
		default:
			throw new IllegalStateException("Unknown pin mode: " + this);
		}
	}
}
