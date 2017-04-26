package io.github.daveho.logicsim;

public class Logic {
	public static int nand(int val1, int val2) {
		return (val1 & val2) ^ 1;
	}

	public static int nor(int val1, int val2) {
		return (val1 | val2) ^ 1;
	}

	public static int not(int val1) {
		return val1 ^ 1;
	}

	public static int and(int val1, int val2) {
		return val1 & val2;
	}

	public static int or(int val1, int val2) {
		return val1 | val2;
	}
}
