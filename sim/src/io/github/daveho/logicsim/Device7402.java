package io.github.daveho.logicsim;

public class Device7402 extends Device {
	public Device7402(String name) {
		super(name);
		DeviceUtil.createQuadTwoInputGatePins(this);
	}

	@Override
	public void update(Simulation sim) {
		doNor(1, sim);
		doNor(2, sim);
		doNor(3, sim);
		doNor(4, sim);
	}

	private void doNor(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		int val2 = getPinValue(gate + "B");
		sim.drive(this, gate + "Y", Logic.nor(val1, val2));
	}
	
	@Override
	public Unit getUnit(String unitName) {
		return DeviceUtil.getQuadTwoInputGateUnit(this, unitName);
	}
}
