package io.github.daveho.logicsim;

public class Device7400 extends DeviceQuadTwoInputGate {
	public Device7400(String name) {
		super(name);
	}
	
	@Override
	public int doLogic(int val1, int val2) {
		return Logic.nand(val1, val2);
	}
}
