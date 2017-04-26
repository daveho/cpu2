package io.github.daveho.logicsim;

/**
 * Logic on bit values.
 * Only 0 and 1 are expected as input values.
 * Only the least significant bits of inputs are
 * used if an input other than 0 or 1 is used.
 */
public class Logic {
	private static int mask(int result) {
		return result & 1;
	}
	
	public static int nand(int val1, int val2) {
		return mask((val1 & val2) ^ 1);
	}

	public static int nor(int val1, int val2) {
		return mask((val1 | val2) ^ 1);
	}

	public static int not(int val1) {
		return mask(val1 ^ 1);
	}

	public static int and(int val1, int val2) {
		return mask(val1 & val2);
	}

	public static int or(int val1, int val2) {
		return mask(val1 | val2);
	}

	public static int xor(int val1, int val2) {
		return mask(val1 ^ val2);
	}
}
