package io.github.daveho.logicsim;

public class Device7402 extends DeviceQuadTwoInputGate {
	public Device7402(String name) {
		super(name);
	}
	
	@Override
	public int doLogic(int val1, int val2) {
		return Logic.nor(val1, val2);
	}
}
