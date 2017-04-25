package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

/**
 * Test nand gates configured as an SR latch.
 */
public class SimulationTestSRLatch {
	private Simulation sim;
	private Device dev7400;
	private Device gen;
	private Net q, qInv; // outputs
	
	@Before
	public void setUp() {
		sim = new Simulation();
		
		// create devices
		dev7400 = new Device7400("u1");
		sim.addDevice(dev7400);
		gen = new DeviceGen("gen", 2);
		sim.addDevice(gen);
		
		// create nets
		Net r = sim.createNet("r");
		Net s = sim.createNet("s");
		q = sim.createNet("q");
		qInv = sim.createNet("qInv");
		
		// connect device pins to nets
		sim.connect(gen, "1", r); // reset
		sim.connect(gen, "2", s); // set
		sim.connect(dev7400, "1A", r);
		sim.connect(dev7400, "1B", qInv);
		sim.connect(dev7400, "1Y", q);
		sim.connect(dev7400, "2A", q);
		sim.connect(dev7400, "2B", s);
		sim.connect(dev7400, "2Y", qInv);
		
		sim.prepare();
	}
	
	@Test
	public void testSetAndKeep() throws Exception {
		sim.drive(gen, "1", 0);
		sim.drive(gen, "2", 1);
		sim.step();
		
		assertEquals(1, q.getValue());
		assertEquals(0, qInv.getValue());
		
		sim.drive(gen, "1", 1);
		
		assertEquals(1, q.getValue());
		assertEquals(0, qInv.getValue());
	}
	
	@Test
	public void testResetAndKeep() throws Exception {
		sim.drive(gen, "1", 1);
		sim.drive(gen, "2", 0);
		sim.step();
		
		assertEquals(0, q.getValue());
		assertEquals(1, qInv.getValue());
		
		sim.drive(gen, "1", 1);
		
		assertEquals(0, q.getValue());
		assertEquals(1, qInv.getValue());
	}
}
