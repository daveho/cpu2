package io.github.daveho.logicsim;

public class Device7408 extends DeviceQuadTwoInputGate {
	public Device7408(String name) {
		super(name);
	}

	@Override
	public int doLogic(int val1, int val2) {
		return Logic.and(val1, val2);
	}
}
