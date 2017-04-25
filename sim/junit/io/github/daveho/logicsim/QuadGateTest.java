package io.github.daveho.logicsim;

/**
 * Useful for quad two-input devices, e.g., 7400, 7402, etc.
 */
public abstract class QuadGateTest extends GateTest {
	public QuadGateTest() {
		super(4, 2);
	}
}
