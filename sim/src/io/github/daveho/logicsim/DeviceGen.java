package io.github.daveho.logicsim;

/**
 * Device which is just a bunch of outputs that can be driven.
 * Pins will be named "1", "2", etc.
 * There is a single {@link Unit} named "1" which has an
 * output {@link Port} which can be written to.
 */
public class DeviceGen extends Device {
	private int numOutputs;
	
	public DeviceGen(String name, int numOutputs) {
		super(name);
		this.numOutputs = numOutputs;
		for (int i = 1; i <= numOutputs; i++) {
			addOutput(i, String.valueOf(i));
		}
	}

	@Override
	public void update(Simulation sim) {
		// nothing to do?
	}

	@Override
	public Unit createUnit(String unitName) {
		if (!unitName.equals("1")) {
			throw new IllegalArgumentException("Only unit 1 is supported");
		}
		Unit unit = new Unit();
		Port input = new Port(this);
		// there are no input pins
		Port output = new Port(this);
		for (int i = 1; i <= numOutputs; i++) {
			output.addPin(getPin(i));
		}
		unit.setInput(input);
		unit.setOutput(output);
		return unit;
	}
}
