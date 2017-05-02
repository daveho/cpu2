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
		
		Unit unit = getUnit("1");
		
		// If there is a rising clock edge,
		// clock in the data
		if (lastClock == 0 && curClock == 1) {
			data = unit.getInput().read();
		}
		lastClock = curClock;
		
		int oeInv = getPinValue("-OE");
		if (oeInv == 1) {
			// Output is disabled: tristate the outputs
			unit.getOutput().tristate(sim);
		} else {
			// Output is enabled: drive output data
			unit.getOutput().write(data, sim);
		}
	}
	
	@Override
	public Unit createUnit(String unitName) {
		if (!unitName.equals("1")) {
			throw new IllegalArgumentException("Only unit 1 is supported");
		}
		return DeviceUtil.getOctalPassThroughUnit(this, "D", "Q");
	}
}
