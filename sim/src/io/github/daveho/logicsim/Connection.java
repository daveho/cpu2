package io.github.daveho.logicsim;

public class Connection {
	private Device device;
	private Pin pin;
	
	public Connection() {
		
	}

	public Device getDevice() {
		return device;
	}

	public void setDevice(Device device) {
		this.device = device;
	}

	public Pin getPin() {
		return pin;
	}

	public void setPin(Pin pin) {
		this.pin = pin;
	}
}
