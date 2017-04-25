package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class SimulationTestNand {
	private Simulation sim;
	private Device dev7400;
	private Unit[] units;
	private Device[] gens;
	
	@Before
	public void setUp() {
		sim = new Simulation();
		
		/*
		// create devices
		dev7400 = new Device7400("U1");
		sim.addDevice(dev7400);
		gen = new DeviceGen("gen", 2);
		sim.addDevice(gen);
		
		// create nets
		Net in1 = sim.createNet("in1");
		Net in2 = sim.createNet("in2");
		this.out = sim.createNet("out");
		
		// connect device pins to nets
		sim.connect(gen, "1", in1);
		sim.connect(gen, "2", in2);
		sim.connect(dev7400, "1A", in1);
		sim.connect(dev7400, "1B", in2);
		sim.connect(dev7400, "1Y", out);
		*/
		
		dev7400 = new Device7400("U1");
		sim.addDevice(dev7400);
		
		units = new Unit[4];
		gens = new Device[4];
		
		for (int i = 0; i < 4; i++) {
			units[i] = createUnit(dev7400, i+1);
			gens[i] = createGen(i+1);
			configureUnit(units[i], gens[i], i+1);
		}

		sim.prepare();
	}

	private Unit createUnit(Device device, int unitIndex) {
		String unitName = String.valueOf(unitIndex);
		return device.getUnit(unitName);
	}

	private Device createGen(int unitIndex) {
		String deviceName = "gen" + unitIndex;
		Device gen = new DeviceGen(deviceName, 2);
		sim.addDevice(gen);
		return gen;
	}

	private void configureUnit(Unit unit, Device gen, int unitIndex) {
		Net in1 = new Net("net" + unitIndex + "A");
		Net in2 = new Net("net" + unitIndex + "B");
		Pin[] inputs = unit.getInputs();
		sim.connect(gen, 1, in1);
		sim.connect(dev7400, inputs[0].getName(), in1);
		sim.connect(gen, 2, in2);
		sim.connect(dev7400, inputs[1].getName(), in2);
	}
	
	@Test
	public void testNand00() throws Exception {
		for (int i = 0; i < 4; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", 0);
			sim.drive(gens[i], "2", 0);
			sim.step();
			assertEquals(1, unit.getOutputValue());
		}
	}
	
	@Test
	public void testNand01() throws Exception {
		for (int i = 0; i < 4; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", 0);
			sim.drive(gens[i], "2", 1);
			sim.step();
			assertEquals(1, unit.getOutputValue());
		}
	}
	
	@Test
	public void testNand10() throws Exception {
		for (int i = 0; i < 4; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", 1);
			sim.drive(gens[i], "2", 0);
			sim.step();
			assertEquals(1, unit.getOutputValue());
		}
	}
	
	@Test
	public void testNand11() throws Exception {
		for (int i = 0; i < 4; i++) {
			Unit unit = units[i];
			sim.drive(gens[i], "1", 1);
			sim.drive(gens[i], "2", 1);
			sim.step();
			assertEquals(0, unit.getOutputValue());
		}
	}
}
