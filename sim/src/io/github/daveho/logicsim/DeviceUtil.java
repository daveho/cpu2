package io.github.daveho.logicsim;

public class DeviceUtil {
	/**
	 * Create device pins for standard quad two-input gate devices,
	 * e.g., 7400, 7402, etc.
	 * @param device create the pins for this {@link Device}
	 */
	public static void createQuadTwoInputGatePins(Device device) {
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

	/**
	 * Create pins for hex single-input gates such as 7404, etc.
	 * @param device create the pins for this {@link Device}
	 */
	public static void createHexSingleInputGatePins(Device device) {
		device.addInput(1, "1A");
		device.addOutput(2, "1Y");
		device.addInput(3, "2A");
		device.addOutput(4, "2Y");
		device.addInput(5, "3A");
		device.addOutput(6, "3Y");
		device.addGnd(7);
		device.addOutput(8, "4Y");
		device.addInput(9, "4A");
		device.addOutput(10, "5Y");
		device.addInput(11, "5A");
		device.addOutput(12, "6Y");
		device.addInput(13, "6A");
		device.addVcc(14);
	}

	public static Unit getQuadTwoInputGateUnit(Device device, String unitName) {
		checkUnitName(unitName, '1', '4');
		Pin[] inputs = new Pin[]{device.getPin(unitName + "A"), device.getPin(unitName + "B")};
		Pin output = device.getPin(unitName + "Y");
		return createUnit(device, inputs, output);
	}

	public static Unit getHexSingleInputGateUnit(Device device, String unitName) {
		checkUnitName(unitName, '1', '6');
		Pin[] inputs = new Pin[]{device.getPin(unitName + "A")};
		Pin output = device.getPin(unitName + "Y");
		return createUnit(device, inputs, output);
	}
	
	private static void checkUnitName(String unitName, char low, char high) {
		if (unitName.length() != 1 || unitName.charAt(0) < low || unitName.charAt(0) > high) {
			throw new IllegalArgumentException("Invalid unit: " + unitName);
		}
	}

	private static Unit createUnit(Device device, Pin[] inputs, Pin output) {
		Port inputPort = new Port(device);
		for (int i = 0; i < inputs.length; i++) {
			inputPort.addPin(inputs[i]);
		}
		Port outputPort = new Port(device);
		outputPort.addPin(output);
		
		Unit unit = new Unit();
		unit.setDevice(device);
//		unit.setInputs(inputs);
//		unit.setOutput(output);
		unit.setInput(inputPort);
		unit.setOutput(outputPort);
		return unit;
	}
}
