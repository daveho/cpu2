package io.github.daveho.logicsim;

import static org.junit.Assert.assertEquals;

/**
 * Useful for quad two-input devices, e.g., 7400, 7402, etc.
 */
public abstract class QuadGateTest {
	protected Simulation sim;
	protected Device theDevice;
	protected Unit[] units;
	protected Device[] gens;
	
	public void setUp() {
		sim = new Simulation();
		theDevice = createDevice();
		sim.addDevice(theDevice);
		
		units = new Unit[4];
		gens = new Device[4];
		
		for (int i = 0; i < 4; i++) {
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
		Device gen = new DeviceGen(deviceName, 2);
		sim.addDevice(gen);
		return gen;
	}

	protected void configureUnit(Unit unit, Device gen, int unitIndex) {
		Net in1 = new Net("net" + unitIndex + "A");
		Net in2 = new Net("net" + unitIndex + "B");
		Pin[] inputs = unit.getInputs();
		sim.connect(gen, 1, in1);
		sim.connect(theDevice, inputs[0].getName(), in1);
		sim.connect(gen, 2, in2);
		sim.connect(theDevice, inputs[1].getName(), in2);
	}
	
	protected void testLogic(int val1, int val2, int expected) {
		for (int i = 0; i < 4; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", val1);
			sim.drive(gens[i], "2", val2);
			sim.step();
			assertEquals(expected, unit.getOutputValue());
		}
	}
}
