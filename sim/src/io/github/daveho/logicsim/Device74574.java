package io.github.daveho.logicsim;

/**
 * '574 octal D-type flip flop with tristate outputs.
 */
public class Device74574 extends DeviceOctalDTypeFFTristate {
	public Device74574(String name) {
		super(name);
		
		addInput(1, "-OE");
		// Add inputs
		for (int i = 0; i < 8; i++) {
			addInput(i+2, "D" + i);
		}
		addGnd(10);
		addInput(11, "CP");
		// Add outputs
		for (int i = 7; i >= 0; i--) {
			int pinNumber = 19 - i;
			addTristateOutput(pinNumber, "Q" + i);
			// Initial pin mode (OUTPUT) should be fine
		}
		addVcc(20);
	}
}
