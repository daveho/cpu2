package io.github.daveho.logicsim;

import org.junit.Before;
import org.junit.Test;

public class Device7404Test extends HexGateTest {
	@Before
	public void setUp() {
		super.setUp();
	}
	
	@Override
	protected Device createDevice() {
		return new Device7404("U1");
	}
	
	@Test
	public void testInvert0() throws Exception {
		testLogic(0, 1);
	}
	
	@Test
	public void testName() throws Exception {
		testLogic(1, 0);
	}
}
