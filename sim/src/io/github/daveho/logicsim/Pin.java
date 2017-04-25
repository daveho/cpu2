package io.github.daveho.logicsim;

public class Pin {
	private String name;
	private int number;
	private PinType type;
	private PinMode mode;
	private Net net;
	
	public Pin() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public PinType getType() {
		return type;
	}

	public void setType(PinType type) {
		this.type = type;
	}
	
	public PinMode getMode() {
		return mode;
	}
	
	public void setMode(PinMode mode) {
		this.mode = mode;
	}
	
	public Net getNet() {
		return net;
	}
	
	public void setNet(Net net) {
		if (this.net != null) {
			throw new IllegalStateException("Attempt to connect already-connected pin " + name);
		}
		this.net = net;
	}
}
