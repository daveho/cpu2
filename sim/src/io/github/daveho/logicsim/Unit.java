package io.github.daveho.logicsim;

public class Unit {
	private Device device;
	private Pin[] inputs;
	private Pin output;
	
	public Unit() {
		
	}

	public Device getDevice() {
		return device;
	}

	public void setDevice(Device device) {
		this.device = device;
	}

	public Pin[] getInputs() {
		return inputs;
	}

	public void setInputs(Pin[] inputs) {
		this.inputs = inputs;
	}

	public Pin getOutput() {
		return output;
	}

	public void setOutput(Pin output) {
		this.output = output;
	}

	public int getOutputValue() {
		return output.getNet().getValue();
	}
}
