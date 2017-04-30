package io.github.daveho.logicsim;

/**
 * Common implementation superclass for quad two-input gate
 * devices ('00, '02, etc.)
 */
public abstract class DeviceQuadTwoInputGate extends Device {
	public DeviceQuadTwoInputGate(String name) {
		super(name);
		DeviceUtil.createQuadTwoInputGatePins(this);
	}
	
	@Override
	public Unit createUnit(String unitName) {
		return DeviceUtil.getQuadTwoInputGateUnit(this, unitName);
	}
	
	public abstract int doLogic(int val1, int val2);
	
	@Override
	public void update(Simulation sim) {
		for (int i = 1; i <= 4; i++) {
			updateGate(i, sim);
		}
	}

	private void updateGate(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		int val2 = getPinValue(gate + "B");
		sim.drive(this, gate + "Y", doLogic(val1, val2));
	}
}
