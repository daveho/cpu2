package io.github.daveho.logicsim;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

public class Simulation {
	private static final int MAX_UPDATES = 2000;
	
	private List<Device> devices;
	private List<Net> nets;
	
	public Simulation() {
		devices = new ArrayList<>();
		nets = new ArrayList<>();
	}
	
	public Net createNet(String name) {
		Net net = new Net(name);
		addNet(net);
		return net;
	}
	
	public void addDevice(Device device) {
		devices.add(device);
	}
	
	public Device getDevice(String devName) {
		for (Device dev : devices) {
			if (dev.getName().equals(devName)) {
				return dev;
			}
		}
		throw new NoSuchElementException("No device with name " + devName);
	}
	
	private void addNet(Net net) {
		nets.add(net);
	}
	
	public Net getNet(String netName) {
		for (Net net : nets) {
			if (net.getName().equals(netName)) {
				return net;
			}
		}
		throw new NoSuchElementException("No net with name " + netName);
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
	
	/**
	 * Prepare to run simulation.
	 * All unconnected pins are connected to a dummy net.
	 */
	public void prepare() {
		int count = 1;
		// Add a dummy net to every unconnected pin
		for (Device device : devices) {
			List<Pin> pins = device.getPins();
			for (Pin pin : pins) {
				Net net = pin.getNet();
				if (net == null) {
					Net dummyNet = new Net("dummy" + count);
					count++;
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
		if (!pin.getType().canSetMode(PinMode.OUTPUT)) {
			throw new IllegalStateException("Cannot drive output on a pin of type " + pin.getType());
		}
		Net net = pin.getNet();
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
	
	public void tristate(Device device, int pinNumber) {
		doTristate(device.getPin(pinNumber));
	}
	
	public void tristate(Device device, String pinName) {
		doTristate(device.getPin(pinName));
	}
	
	private void doTristate(Pin pin) {
		if (!pin.getType().canSetMode(PinMode.HI_Z)) {
			throw new IllegalStateException("Cannot tristate a pin of type " + pin.getType());
		}
		
		if (pin.getMode() == PinMode.HI_Z) {
			return; // pin is already tristated
		}
		
		pin.setMode(PinMode.HI_Z);
		Net net = pin.getNet();
		List<Connection> connections = net.getConnections();
		
		// Propagate the change to all devices connected to this net
		boolean anyDriving = false;
		for (Connection conn : connections) {
			Pin connPin = conn.getPin();
			if (connPin != pin) {
				if (connPin.getMode() == PinMode.OUTPUT) {
					anyDriving = true;
				}
				conn.getDevice().setDirty(true);
			}
		}
		
		if (!anyDriving) {
			// Let the net float high
			net.setValue(1);
		}
	}

	public void step() {
		// Mark all devices as dirty
		for (Device device : devices) {
			device.setDirty(true);
		}
		
		// Propagate updates until equilibrium is reached
		int updates = 0;
		while (!quiescent()) {
			if (updates > MAX_UPDATES) {
				throw new IllegalStateException("Failed to reach equilibrium after " + updates + " updates");
			}
			for (Device device : devices) {
				if (device.isDirty()) {
					System.out.println("Updating device " + device.getName());
					device.setDirty(false);
					device.update(this);
				}
			}
			updates++;
		}
		System.out.println("Reached equilibrium after " + updates + " update(s)");
	}

	private boolean quiescent() {
		return devices.stream().allMatch(d -> !d.isDirty());
	}
	
	public void logDiagnostic(String msg) {
		
	}
}
