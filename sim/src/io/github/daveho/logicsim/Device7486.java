package io.github.daveho.logicsim;

public class Device7486 extends Device {
	public Device7486(String name) {
		super(name);
		DeviceUtil.createQuadTwoInputGatePins(this);
	}

	@Override
	public void update(Simulation sim) {
		doXor(1, sim);
		doXor(2, sim);
		doXor(3, sim);
		doXor(4, sim);
	}

	private void doXor(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		int val2 = getPinValue(gate + "B");
		sim.drive(this, gate + "Y", Logic.xor(val1, val2));
	}
	
	@Override
	public Unit getUnit(String unitName) {
		return DeviceUtil.getQuadTwoInputGateUnit(this, unitName);
	}
}
