package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class SimulationTest {
	private Simulation sim;
	private Device dev7400;
	private Device outputs;
	private Net out;
	
	@Before
	public void setUp() {
		sim = new Simulation();
		dev7400 = new Device7400("U1");
		sim.addDevice(dev7400);
		outputs = new DeviceOutputs("outputs", 2);
		sim.addDevice(outputs);
		Net in1 = new Net("in1");
		Net in2 = new Net("in2");
		sim.connect(outputs, "1", in1);
		sim.connect(outputs, "2", in2);
		sim.connect(dev7400, "1A", in1);
		sim.connect(dev7400, "1B", in2);
		this.out = new Net("out");
		sim.connect(dev7400, "1Y", out);
		sim.prepare();
		dev7400.setDirty(true); // ensure at least one update occurs
	}
	
	@Test
	public void testNand00() throws Exception {
		sim.drive(outputs, "1", 0);
		sim.drive(outputs, "2", 0);
		sim.step();
		assertEquals(1, dev7400.getPinValue("1Y"));
	}
	
	@Test
	public void testNand10() throws Exception {
		sim.drive(outputs, "1", 1);
		sim.drive(outputs, "2", 0);
		sim.step();
		assertEquals(0, dev7400.getPinValue("1Y"));
	}
	
	@Test
	public void testNand01() throws Exception {
		sim.drive(outputs, "1", 0);
		sim.drive(outputs, "2", 1);
		sim.step();
		assertEquals(0, dev7400.getPinValue("1Y"));
	}
	
	@Test
	public void testNand11() throws Exception {
		sim.drive(outputs, "1", 1);
		sim.drive(outputs, "2", 1);
		sim.step();
		assertEquals(0, dev7400.getPinValue("1Y"));
	}
}
