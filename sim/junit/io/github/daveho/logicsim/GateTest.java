package io.github.daveho.logicsim;

import static org.junit.Assert.assertEquals;

public abstract class GateTest {
	private final int numGates;
	private final int inputsPerGate;
	protected Simulation sim;
	protected Device theDevice;
	protected Unit[] units;
	protected Device[] gens;
	
	public GateTest(int numGates, int inputsPerGate) {
		this.numGates = numGates;
		this.inputsPerGate = inputsPerGate;
	}
	
	public void setUp() {
		sim = new Simulation();
		theDevice = createDevice();
		sim.addDevice(theDevice);
		
		units = new Unit[numGates];
		gens = new Device[numGates];
		
		for (int i = 0; i < numGates; i++) {
			units[i] = createUnit(theDevice, i+1);
			gens[i] = createGen(i+1);
			configureUnit(units[i], gens[i], i+1);
		}

		sim.prepare();
	}
	
	protected abstract Device createDevice();

	protected Unit createUnit(Device device, int unitIndex) {
		String unitName = String.valueOf(unitIndex);
		return device.getUnit(unitName);
	}

	protected Device createGen(int unitIndex) {
		String deviceName = "gen" + unitIndex;
		Device gen = new DeviceGen(deviceName, inputsPerGate);
		sim.addDevice(gen);
		return gen;
	}

	protected void configureUnit(Unit unit, Device gen, int unitIndex) {
		Net[] inputNets = new Net[inputsPerGate];
		for (int i = 0; i < inputsPerGate; i++) {
			inputNets[i] = new Net("net" + unitIndex + String.valueOf((char)('A' + i)));
		}
		//Pin[] inputs = unit.getInputs();
		for (int i = 0; i < inputsPerGate; i++) {
			sim.connect(gen, i+1, inputNets[i]);
			Pin inputPin = unit.getInput().getPin(i);
			sim.connect(theDevice, inputPin.getName(), inputNets[i]);
		}
	}
	
	protected void testLogic(int val1, int val2, int expected) {
		for (int i = 0; i < numGates; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", val1);
			sim.drive(gens[i], "2", val2);
			sim.step();
//			assertEquals(expected, unit.getOutputValue());
			assertEquals(expected, unit.getOutput().read());
		}
	}
	
	protected void testLogic(int val1, int expected) {
		for (int i = 0; i < numGates; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", val1);
			sim.step();
//			assertEquals(expected, unit.getOutputValue());
			assertEquals(expected, unit.getOutput().read());
		}
	}
}
