package io.github.daveho.logicsim;

public class Device7432 extends DeviceQuadTwoInputGate {
	public Device7432(String name) {
		super(name);
	}

	@Override
	public int doLogic(int val1, int val2) {
		return Logic.or(val1, val2);
	}
}
