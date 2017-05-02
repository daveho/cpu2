package io.github.daveho.logicsim;

/**
 * 3 to 8 decoder device.
 */
public class Device74138 extends Device {
	public Device74138(String name) {
		super(name);
		addInput(1, "A0");
		addInput(2, "A1");
		addInput(3, "A2");
		addInput(4, "-E1");
		addInput(5, "-E2");
		addInput(6, "E3");
		addOutput(7, "-Y7");
		addGnd(8);
		for (int i = 9; i <= 15; i++) {
			int outputIndex = 15 - i;
			addOutput(i, "-Y" + outputIndex);
		}
		addVcc(16);
	}

	@Override
	public void update(Simulation sim) {
		Unit unit = getUnit("1");
		
		// Check whether output is enabled
		boolean enabled = getPinValue("-E1") == 0
				&& getPinValue("-E2") == 0
				&& getPinValue("E3") == 1;
		if (!enabled) {
			// Output is disabled, so all outputs are high
			unit.getOutput().write(0xFF, sim);
		} else {
			// Output is enabled, so make selected output low
			int select = unit.getInput().read();
			unit.getOutput().write(0xFF ^ (1 << select), sim);
		}
	}

	@Override
	public Unit createUnit(String unitName) {
		if (!unitName.equals("1")) {
			throw new IllegalArgumentException("Only unit 1 is supported");
		}
		return DeviceUtil.getIOUnit(this, "A", 3, "-Y", 8);
	}
}
