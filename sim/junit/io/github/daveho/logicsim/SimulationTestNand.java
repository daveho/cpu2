package io.github.daveho.logicsim;

import org.junit.Before;
import org.junit.Test;

public class SimulationTestNand extends QuadGateTest {
	@Before
	public void setUp() {
		super.setUp();
	}
	
	@Override
	protected Device createDevice() {
		return new Device7400("U1");
	}
	
	@Test
	public void testNand00() throws Exception {
		testLogic(0, 0, 1);
	}
	
	@Test
	public void testNand01() throws Exception {
		testLogic(1, 0, 1);
	}
	
	@Test
	public void testNand10() throws Exception {
		testLogic(0, 1, 1);
	}
	
	@Test
	public void testNand11() throws Exception {
		testLogic(1, 1, 0);
	}
}
