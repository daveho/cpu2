package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class SimulationTestNand {
	private Simulation sim;
	private Device dev7400;
	private Device gen;
	private Net out;
	
	@Before
	public void setUp() {
		sim = new Simulation();
		
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

		sim.prepare();
	}
	
	@Test
	public void testNand00() throws Exception {
		sim.drive(gen, "1", 0);
		sim.drive(gen, "2", 0);
		sim.step();
		assertEquals(1, dev7400.getPinValue("1Y"));
	}
	
	@Test
	public void testNand10() throws Exception {
		sim.drive(gen, "1", 1);
		sim.drive(gen, "2", 0);
		sim.step();
		assertEquals(1, dev7400.getPinValue("1Y"));
	}
	
	@Test
	public void testNand01() throws Exception {
		sim.drive(gen, "1", 0);
		sim.drive(gen, "2", 1);
		sim.step();
		assertEquals(1, dev7400.getPinValue("1Y"));
	}
	
	@Test
	public void testNand11() throws Exception {
		sim.drive(gen, "1", 1);
		sim.drive(gen, "2", 1);
		sim.step();
		assertEquals(0, dev7400.getPinValue("1Y"));
	}
}
