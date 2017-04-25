package io.github.daveho.logicsim;

import org.junit.Before;
import org.junit.Test;

public class Device7402Test extends QuadGateTest {
	@Before
	public void setUp() {
		super.setUp();
	}

	@Override
	protected Device createDevice() {
		return new Device7402("U1");
	}

	@Test
	public void testNor00() throws Exception {
		testLogic(0, 0, 1);
	}
	
	@Test
	public void testNor10() throws Exception {
		testLogic(1, 0, 0);
	}
	
	@Test
	public void testNor01() throws Exception {
		testLogic(0, 1, 0);
	}
	
	@Test
	public void testNor11() throws Exception {
		testLogic(1, 1, 0);
	}
}
