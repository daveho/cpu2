package io.github.daveho.logicsim;

public class DeviceUtil {
	/**
	 * Create device pins for standard quad two-input gate devices,
	 * e.g., 7400, 7402, etc.
	 * @param device create the pins for this {@link Device}
	 */
	public static void createQuadGatePins(Device device) {
		device.addInput(1, "1A");
		device.addInput(2, "1B");
		device.addOutput(3, "1Y");
		device.addInput(4, "2A");
		device.addInput(5, "2B");
		device.addOutput(6, "2Y");
		device.addGnd(7);
		device.addOutput(8, "3Y");
		device.addInput(9, "3A");
		device.addInput(10, "3B");
		device.addOutput(11, "4Y");
		device.addInput(12, "4A");
		device.addInput(13, "4B");
		device.addVcc(14);
	}

	public static Unit getQuadGateUnit(Device device, String unitName) {
		if (unitName.length() != 1 || unitName.charAt(0) < '1' || unitName.charAt(0) > '4') {
			throw new IllegalArgumentException("Invalid unit: " + unitName);
		}
		Pin[] inputs = new Pin[]{device.getPin(unitName + "A"), device.getPin(unitName + "B")};
		Pin output = device.getPin(unitName + "Y");
		Unit unit = new Unit();
		unit.setDevice(device);
		unit.setInputs(inputs);
		unit.setOutput(output);
		return unit;
	}
}
