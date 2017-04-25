package io.github.daveho.logicsim;

import org.junit.Before;
import org.junit.Test;

public class Device7408Test extends QuadGateTest {
	@Before
	public void setUp() {
		super.setUp();
	}
	
	@Override
	protected Device createDevice() {
		return new Device7408("U1");
	}
	
	@Test
	public void testAnd00() throws Exception {
		testLogic(0, 0, 0);
	}
	
	@Test
	public void testAnd10() throws Exception {
		testLogic(1, 0, 0);
	}
	
	@Test
	public void testAnd01() throws Exception {
		testLogic(0, 1, 0);
	}
	
	@Test
	public void testAnd11() throws Exception {
		testLogic(1, 1, 1);
	}
}
