package io.github.daveho.logicsim;

public class Device7486 extends DeviceQuadTwoInputGate {
	public Device7486(String name) {
		super(name);
	}
	
	@Override
	public int doLogic(int val1, int val2) {
		return Logic.xor(val1, val2);
	}
}
