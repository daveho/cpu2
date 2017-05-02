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
		throw new UnsupportedOperationException("Not implemented yet");
	}

	@Override
	public Unit createUnit(String unitName) {
		throw new UnsupportedOperationException("Not implemented yet");
	}

}
