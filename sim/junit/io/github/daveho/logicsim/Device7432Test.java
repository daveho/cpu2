package io.github.daveho.logicsim;

import org.junit.Before;
import org.junit.Test;

public class Device7432Test extends QuadGateTest {
	@Before
	public void setUp() {
		super.setUp();
	}

	@Override
	protected Device createDevice() {
		return new Device7432("U1");
	}

	@Test
	public void testOr00() throws Exception {
		testLogic(0, 0, 0);
	}

	@Test
	public void testOr10() throws Exception {
		testLogic(1, 0, 1);
	}

	@Test
	public void testOr01() throws Exception {
		testLogic(0, 1, 1);
	}

	@Test
	public void testOr11() throws Exception {
		testLogic(1, 1, 1);
	}
}
