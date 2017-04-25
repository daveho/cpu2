package io.github.daveho.logicsim;

public class Device7400 extends Device {
	public Device7400(String name) {
		super(name);
		DeviceUtil.createQuadTwoInputGatePins(this);
	}
	
	@Override
	public void update(Simulation sim) {
		doNand(1, sim);
		doNand(2, sim);
		doNand(3, sim);
		doNand(4, sim);
	}

	private void doNand(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		int val2 = getPinValue(gate + "B");
		sim.drive(this, gate + "Y", Logic.nand(val1, val2));
	}
	
	@Override
	public Unit getUnit(String unitName) {
		return DeviceUtil.getQuadTwoInputGateUnit(this, unitName);
	}
}
