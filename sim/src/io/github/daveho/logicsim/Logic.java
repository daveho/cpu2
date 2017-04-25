package io.github.daveho.logicsim;

public class Logic {
	public static int nand(int val1, int val2) {
		return (val1 | val2) ^ 1;
	}
}
