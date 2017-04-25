package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Test;

public class LogicTest {
	@Test
	public void testNand() throws Exception {
		assertEquals(1, Logic.nand(0, 0));
		assertEquals(1, Logic.nand(1, 0));
		assertEquals(1, Logic.nand(0, 1));
		assertEquals(0, Logic.nand(1, 1));
	}
	
	@Test
	public void testNor() throws Exception {
		assertEquals(1, Logic.nor(0, 0));
		assertEquals(0, Logic.nor(1, 0));
		assertEquals(0, Logic.nor(0, 1));
		assertEquals(0, Logic.nor(1, 1));
	}
}
