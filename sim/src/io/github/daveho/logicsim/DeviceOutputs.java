package io.github.daveho.logicsim;

/**
 * Device which is just a bunch of outputs that can be driven.
 * Pins will be named "1", "2", etc.
 */
public class DeviceOutputs extends Device {
	public DeviceOutputs(String name, int numOutputs) {
		super(name);
		for (int i = 1; i <= numOutputs; i++) {
			addOutput(i, String.valueOf(i));
		}
	}

	@Override
	public void update(Simulation sim) {
		// nothing to do?
	}

}
