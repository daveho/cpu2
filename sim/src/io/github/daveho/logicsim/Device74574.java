package io.github.daveho.logicsim;

/**
 * '574 octal D-type flip flop with tristate outputs.
 * (The '374 part is very similar, but with a weirder
 * pin layout.  No doubt we could share the logic of this
 * implementation with a '374 emulation: only the pin
 * configuration would be different.)
 */
public class Device74574 extends Device {
	// State!
	private int lastClock;
	private int data;
	
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
		
		// Initialize data
		lastClock = 0;
		data = 0;
	}
	
	@Override
	public void update(Simulation sim) {
		int curClock = getPinValue("CP");
		
		// If there is a rising clock edge,
		// clock in the data
		if (lastClock == 0 && curClock == 1) {
			int curData = 0;
			for (int i = 0; i < 8; i++) {
				int val = getPinValue("D" + i);
				curData |= (val << i);
			}
			data = curData;
		}
		lastClock = curClock;
		
		int oeInv = getPinValue("-OE");
		if (oeInv == 0) {
			// Output is disabled: tristate the outputs
			for (int i = 0; i < 8; i++) {
				sim.tristate(this, "Q" + i);
			}
		} else {
			// Output is enabled: drive output data
			for (int i = 0; i < 8; i++) {
				int val = (data & (1 << i)) != 0 ? 1 : 0;
				sim.drive(this, "Q" + i, val);
			}
		}
	}
}
