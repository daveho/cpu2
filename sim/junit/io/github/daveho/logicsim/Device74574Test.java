package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class Device74574Test {
	private static final int CP_PIN = 9;
	private static final int OEINV_PIN = 10;
	
	private Simulation sim;
	private Device gen;
	private Device dev74574;
	
	@Before
	public void setUp() {
		sim = new Simulation();
		
		gen = new DeviceGen("gen", 10); // 8 data, CP, and -OE
		sim.addDevice(gen);
		dev74574 = new Device74574("u1");
		sim.addDevice(dev74574);

		// connect inputs
		for (int i = 0; i < 8; i++) {
			Net net = sim.createNet("d"+i);
			sim.connect(gen, String.valueOf(i+1), net);
			sim.connect(dev74574, "D" + i, net);
		}
		
		// CP
		Net cpNet = sim.createNet("CP");
		sim.connect(gen, CP_PIN, cpNet);
		sim.connect(dev74574, "CP", cpNet);
		
		// -OE
		Net oeInvNet = sim.createNet("-OE");
		sim.connect(gen, OEINV_PIN, oeInvNet);
		sim.connect(dev74574, "-OE", oeInvNet);
		
		sim.prepare();
	}
	
	@Test
	public void testSetAndRead() throws Exception {
		driveOEInv(1); // disable output
		driveData(0xCA);
		driveCP(0);
		sim.step();
		assertIsTristated();
		driveCP(1);
		sim.step(); // should clock in data
		assertIsTristated();
		assertEquals(0xFF, readData()); // outputs still tristated, nets are floating
		driveOEInv(0); // enable output
		sim.step();
		assertEquals(0xCA, readData());
	}

	private void driveOEInv(int value) {
		sim.drive(gen, OEINV_PIN, value);
	}

	private void driveData(int data) {
		for (int i = 0; i < 8; i++) {
			int val = (data & (1 << i)) != 0 ? 1 : 0;
			sim.drive(gen, i+1, val);
		}
	}

	private void driveCP(int value) {
		sim.drive(gen, CP_PIN, value);
	}
	
	private int readData() {
		int data = 0;
		for (int i = 0; i < 8; i++) {
			int val = dev74574.getPinValue("Q" + i);
			data |= (val << i);
		}
		return data;
	}
	
	public void assertIsTristated() {
		for (int i = 0; i < 8; i++) {
			assertEquals(PinMode.HI_Z, dev74574.getPin("Q" + i).getMode());
		}
	}
}
