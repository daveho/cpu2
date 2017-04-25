package io.github.daveho.logicsim;

public class Device7400 extends Device {
	public Device7400(String name) {
		super(name);
		addInput(1, "1A");
		addInput(2, "1B");
		addOutput(3, "1Y");
		addInput(4, "2A");
		addInput(5, "2B");
		addOutput(6, "2Y");
		addGnd(7);
		addOutput(8, "3Y");
		addInput(9, "3A");
		addInput(10, "3B");
		addOutput(11, "4Y");
		addInput(12, "4A");
		addInput(13, "4B");
		addVcc(14);
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
}
