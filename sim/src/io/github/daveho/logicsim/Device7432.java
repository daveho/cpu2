package io.github.daveho.logicsim;

public class Device7432 extends Device {
	public Device7432(String name) {
		super(name);
		DeviceUtil.createQuadTwoInputGatePins(this);
	}

	@Override
	public void update(Simulation sim) {
		doOr(1, sim);
		doOr(2, sim);
		doOr(3, sim);
		doOr(4, sim);
	}
	
	private void doOr(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		int val2 = getPinValue(gate + "B");
		sim.drive(this, gate + "Y", Logic.or(val1, val2));
	}

	@Override
	public Unit getUnit(String unitName) {
		return DeviceUtil.getQuadTwoInputGateUnit(this, unitName);
	}
}
