package io.github.daveho.logicsim;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class Device {
	private final String name;
	private List<Pin> pins;
	private Map<String, Pin> byName;
	private Map<Integer, Pin> byNumber;
	private boolean dirty;
	
	public Device(String name) {
		this.name = name;
		this.pins = new ArrayList<>();
		this.byName = new HashMap<>();
		this.byNumber = new HashMap<>();
		this.dirty = false;
	}
	
	public String getName() {
		return name;
	}
	
	public void addPin(int pinNumber, String name, PinType type) {
		if (byName.containsKey(name)) {
			throw new IllegalArgumentException("Duplicate pin name: " + name);
		}
		if (byNumber.containsKey(pinNumber)) {
			throw new IllegalArgumentException("Duplicate pin number: " + pinNumber);
		}
		Pin pin = new Pin();
		pin.setName(name);
		pin.setNumber(pinNumber);
		pin.setType(type);
		pin.setMode(type.getInitialMode());
		pins.add(pin);
		byName.put(name, pin);
		byNumber.put(pinNumber, pin);
	}
	
	public List<Pin> getPins() {
		return pins;
	}
	
	public Pin getPin(int pinNumber) {
		Pin pin = byNumber.get(pinNumber);
		if (pin == null) {
			throw new IllegalArgumentException("No such pin number: " + pinNumber);
		}
		return pin;
	}
	
	public Pin getPin(String name) {
		Pin pin = byName.get(name);
		if (pin == null) {
			throw new IllegalArgumentException("No such pin name: " + name);
		}
		return pin;
	}
	
	public int getPinValue(int pinNumber) {
		return getNetValue(getPin(pinNumber).getNet());
	}
	
	public int getPinValue(String name) {
		return getNetValue(getPin(name).getNet());
	}

	private int getNetValue(Net net) {
		if (net == null) {
			return 1; // unconnected inputs read high?
		}
		return net.getValue();
	}
	
	public void addInput(int pinNumber, String name) {
		addPin(pinNumber, name, PinType.INPUT);
	}
	
	public void addOutput(int pinNumber, String name) {
		addPin(pinNumber, name, PinType.OUTPUT);
	}
	
	public void addVcc(int pinNumber) {
		addPin(pinNumber, "VCC", PinType.POWER_VCC);
	}
	
	public void addGnd(int pinNumber) {
		addPin(pinNumber, "GND", PinType.POWER_GND);
	}
	
	public boolean isDirty() {
		return dirty;
	}
	
	public void setDirty(boolean dirty) {
		this.dirty = dirty;
	}
	
	public abstract void update(Simulation sim);
}
