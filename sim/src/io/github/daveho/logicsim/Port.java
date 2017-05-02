package io.github.daveho.logicsim;

import java.util.ArrayList;
import java.util.List;

/**
 * A port is a sequence of related pins on a {@link Device}
 * that can be read or written as a unit.
 */
public class Port {
	private Device device;
	private List<Pin> pins;
	
	public Port(Device device) {
		this.device = device;
		pins = new ArrayList<>();
	}
	
	/**
	 * Add a {@link Pin}.  Pins should be added in
	 * least-significant to most-significant order
	 * (e.g., D0 first, then D1, etc.)
	 * 
	 * @param pin the {@link Pin} to add
	 */
	public void addPin(Pin pin) {
		pins.add(pin);
	}
	
	/**
	 * Get the {@link Pin} at specified index.
	 * 
	 * @param index the index
	 * @return the {@link Pin} at the specified index
	 */
	public Pin getPin(int index) {
		return pins.get(index);
	}
	
	/**
	 * Read the value of the port by reading its input {@link Pin}s
	 * and returning its bits as an integer.
	 * 
	 * @return the integer value read from the port
	 */
	public int read() {
		int value = 0;
		for (int i = 0; i < pins.size(); i++) {
			Pin pin = pins.get(i);
			value |= (pin.getNet().getValue() << i);
		}
		return value;
	}
	
	/**
	 * Drive an integer value on the pins of the port.
	 * Each output pin corresponds to one bit of the value.
	 * The least significant bit of the value is driven
	 * onto the least significant pin, etc.
	 * 
	 * @param value the value to drive
	 * @param sim the {@link Simulation}
	 */
	public void write(int value, Simulation sim) {
		for (int i = 0; i < pins.size(); i++) {
			Pin pin = pins.get(i);
			int bitval = (value & (1 << i)) != 0 ? 1 : 0;
			sim.drive(device, pin.getNumber(), bitval);
		}
	}
	
	/**
	 * Drive bit values onto the pins of the port.
	 * The bit values are specified as individual integer values,
	 * least significant bit first.
	 * 
	 * @param sim  the {@link Simulation}
	 * @param bits the output bits
	 */
	public void write(Simulation sim, int... bits) {
		if (bits.length != pins.size()) {
			throw new IllegalArgumentException("Wrong number of output bits");
		}
		for (int i = 0; i < pins.size(); i++) {
			Pin pin = pins.get(i);
			int bitval = bits[i];
			sim.drive(device, pin.getNumber(), bitval);
		}
	}

	/**
	 * Tristate all of this port's {@link Pin}s.
	 * @param sim the {@link Simulation}
	 */
	public void tristate(Simulation sim) {
		for (int i = 0; i < pins.size(); i++) {
			Pin pin = pins.get(i);
			sim.tristate(device, pin.getNumber());
		}
	}

	public boolean allPinsAre(PinMode mode) {
		return pins.stream().allMatch(p -> p.getMode() == mode);
	}
}
