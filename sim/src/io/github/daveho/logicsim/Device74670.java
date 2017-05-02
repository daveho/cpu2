package io.github.daveho.logicsim;

/**
 * 4x4 register file with tristate outputs.
 * These things are nifty.
 */
public class Device74670 extends Device {
	public int[] data;
	
	public Device74670(String name) {
		super(name);
		this.data = new int[4];
		addInput(1, "D1");
		addInput(2, "D2");
		addInput(3, "D3");
		addInput(4, "RA1");
		addInput(5, "RA0");
		addTristateOutput(6, "Q3");
		addTristateOutput(7, "Q2");
		addGnd(8);
		addTristateOutput(9, "Q1");
		addTristateOutput(10, "Q0");
		addInput(11, "-RE");
		addInput(12, "-WE");
		addInput(13, "WA1");
		addInput(14, "WA0");
		addInput(15, "D0");
		addVcc(16);
	}

	@Override
	public void update(Simulation sim) {
		// See if read output is enabled
		if (getPinValue("-RE") == 0) {
			// output is enabled
			int addr = getUnit("RA").getInput().read(); // get read address
			int val = data[addr]; // get data from specified register
			getUnit("Q").getOutput().write(val, sim); // drive data on output pins
		} else {
			// output is disabled, so tristate the outputs
			getUnit("Q").getOutput().tristate(sim);
		}
		
		// See if a write is enabled
		if (getPinValue("-WE") == 0) {
			int addr = getUnit("WA").getInput().read(); // get write address
			int val = getUnit("D").getInput().read(); // get input data
			data[addr] = val; // store in specified register
		}
	}

	@Override
	public Unit createUnit(String unitName) {
		// I don't think it makes sense for this device
		// to have units with both input and output ports.
		// So, there are four units, each with a single port
		// (input or output).
		
		if (unitName.equals("D")) {
			// Read data unit: input port only
			return DeviceUtil.getInputUnit(this, "D", 4);
		} else if (unitName.equals("RA")) {
			// Read address unit: input port only
			return DeviceUtil.getInputUnit(this, "RA", 2);
		} else if (unitName.equals("Q")) {
			// Write data unit: output port only
			return DeviceUtil.getOutputUnit(this, "Q", 4);
		} else if (unitName.equals("WA")) {
			// Write address unit: input port only
			return DeviceUtil.getInputUnit(this, "WA", 2);
		} else {
			throw new IllegalArgumentException("Unknown unit name: " + unitName);
		}
	}
}
