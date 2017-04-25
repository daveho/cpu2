package io.github.daveho.logicsim;

import java.util.ArrayList;
import java.util.List;

public class Simulation {
	private static final int MAX_UPDATES = 2000;
	
	private List<Device> devices;
	private List<Net> nets;
	
	public Simulation() {
		devices = new ArrayList<>();
		nets = new ArrayList<>();
	}
	
	public void addDevice(Device device) {
		devices.add(device);
	}
	
	public void addNet(Net net) {
		nets.add(net);
	}
	
	public void connect(Device device, int pinNumber, Net net) {
		doConnect(device, net, device.getPin(pinNumber));
	}
	
	public void connect(Device device, String name, Net net) {
		doConnect(device, net, device.getPin(name));
	}

	private void doConnect(Device device, Net net, Pin pin) {
		Connection conn = new Connection();
		conn.setDevice(device);
		conn.setPin(pin);
		net.addConnection(conn);
		pin.setNet(net);
	}
	
	public void prepare() {
		int count = 0;
		// Add a dummy net to every unconnected pin
		for (Device device : devices) {
			List<Pin> pins = device.getPins();
			for (Pin pin : pins) {
				Net net = pin.getNet();
				if (net == null) {
					Net dummyNet = new Net("dummy" + (++count));
					dummyNet.setValue(1); // appropriate for floating input
					pin.setNet(dummyNet);
				}
			}
		}
	}
	
	public void drive(Device device, int pinNumber, int value) {
		doDrive(device.getPin(pinNumber), value);
	}
	
	public void drive(Device device, String name, int value) {
		doDrive(device.getPin(name), value);
	}

	private void doDrive(Pin pin, int value) {
		if (pin.getMode() != PinMode.OUTPUT) {
			throw new IllegalStateException("Attempt to drive pin " + pin.getName() + " while in " + pin.getMode() + " mode");
		}
		Net net = pin.getNet();
		if (net == null) {
			logDiagnostic("No net connected to pin " + pin.getName());
			return;
		}
		int currentValue = net.getValue();
		if (currentValue != value) {
			net.setValue(value);
			// Net's value has changed.
			// Propagate the change.
			List<Connection> connections = net.getConnections();
			for (Connection conn : connections) {
				Pin connPin = conn.getPin();
				if (connPin != pin) {
					if (connPin.getMode() == PinMode.OUTPUT) {
						// This should not happen in a properly designed circuit
						logDiagnostic("Net " + net.getName() + " has multiple output pins active");
					} else if (connPin.getMode() == PinMode.INPUT) {
						// Input pin has changed
						Device connDevice = conn.getDevice();
						System.out.printf("Marking %s:%s as dirty\n", connDevice.getName(), connPin.getName());
						connDevice.setDirty(true);
					}
				}
			}
		}
	}
	
	public void step() {
		int updates = 0;
		while (!quiescent()) {
			if (updates > MAX_UPDATES) {
				throw new IllegalStateException("Failed to reach equilibrium after " + updates + " updates");
			}
			for (Device device : devices) {
				if (device.isDirty()) {
					System.out.println("Updating device" + device.getName());
					device.setDirty(false);
					device.update(this);
				}
			}
			updates++;
		}
	}

	private boolean quiescent() {
		for (Device device : devices) {
			if (device.isDirty()) {
				return false;
			}
		}
		return true;
	}
	
	public void logDiagnostic(String msg) {
		
	}
}
