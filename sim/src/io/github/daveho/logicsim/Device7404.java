package io.github.daveho.logicsim;

public class Device7404 extends Device {
	public Device7404(String name) {
		super(name);
		DeviceUtil.createHexSingleInputGatePins(this);
	}

	@Override
	public void update(Simulation sim) {
		for (int i = 1; i <= 6; i++) {
			doInvert(i, sim);
		}
	}

	private void doInvert(int gate, Simulation sim) {
		int val1 = getPinValue(gate + "A");
		sim.drive(this, gate + "Y", Logic.not(val1));
	}
	
	@Override
	public Unit createUnit(String unitName) {
		return DeviceUtil.getHexSingleInputGateUnit(this, unitName);
	}
}
