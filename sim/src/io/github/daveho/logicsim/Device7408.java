package io.github.daveho.logicsim;

public class Device7408 extends Device {
	public Device7408(String name) {
		super(name);
		DeviceUtil.createQuadTwoInputGatePins(this);
	}

	@Override
	public void update(Simulation sim) {
		doAnd(1, sim);
		doAnd(2, sim);
		doAnd(3, sim);
		doAnd(4, sim);
	}

	private void doAnd(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		int val2 = getPinValue(gate + "B");
		sim.drive(this, gate + "Y", Logic.and(val1, val2));
	}
	
	@Override
	public Unit getUnit(String unitName) {
		return DeviceUtil.getQuadTwoInputGateUnit(this, unitName);
	}
}
