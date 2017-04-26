package io.github.daveho.logicsim;

/**
 * Common superclass for '374 and '574 devices.
 * Both are octal D-type flip flips with tristate
 * outputs.  They differ only in pin configuration.
 * (The '574 has a much saner arrangement.)
 */
public abstract class DeviceOctalDTypeFFTristate extends Device {
	// State!
	private int lastClock;
	private int data;
	
	public DeviceOctalDTypeFFTristate(String name) {
		super(name);
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
