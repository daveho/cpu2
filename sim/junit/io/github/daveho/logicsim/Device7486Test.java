package io.github.daveho.logicsim;

import org.junit.Before;
import org.junit.Test;

public class Device7486Test extends QuadGateTest {
	@Before
	public void setUp() {
		super.setUp();
	}
	
	@Override
	protected Device createDevice() {
		return new Device7486("U1");
	}

	@Test
	public void testXor00() throws Exception {
		testLogic(0, 0, 0);
	}

	@Test
	public void testXor10() throws Exception {
		testLogic(1, 0, 1);
	}

	@Test
	public void testXor01() throws Exception {
		testLogic(0, 1, 1);
	}

	@Test
	public void testXor11() throws Exception {
		testLogic(1, 1, 0);
	}
}
