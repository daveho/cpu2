package io.github.daveho.logicsim;

/**
 * '374 octal D-type flip flop with tristate outputs.
 */
public class Device74374 extends DeviceOctalDTypeFFTristate {
	public Device74374(String name) {
		super(name);
		
		addInput(1, "-OE");
		addOutput(2, "Q0");
		addInput(3, "D0");
		addInput(4, "D1");
		addOutput(5, "Q1");
		addOutput(6, "Q2");
		addInput(7, "D2");
		addInput(8, "D3");
		addOutput(9, "Q3");
		addGnd(10);
		addInput(11, "CP");
		addOutput(12, "Q4");
		addInput(13, "D4");
		addInput(14, "D5");
		addOutput(15, "Q5");
		addOutput(16, "Q6");
		addInput(17, "D6");
		addInput(18, "D7");
		addOutput(19, "Q7");
		addVcc(20);
	}
}
