package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class Device74138Test {
	private Simulation sim;
	private Device74138 dev;
	private DeviceGen enableGen;
	private DeviceGen addrGen;
	private Port enablePort;
	private Port addrPort;
	private Port outputPort;
	
	@Before
	public void setUp() {
		sim = new Simulation();
		
		dev = new Device74138("U1");
		sim.addDevice(dev);
		enableGen = new DeviceGen("enableGen", 3);
		sim.addDevice(enableGen);
		addrGen = new DeviceGen("addrGen", 3);
		sim.addDevice(addrGen);
		
		// Connections for enable signals
		for (int i = 1; i <= 3; i++) {
			boolean inverted = (i != 3); // first two enables (-E1 and -E2) are inverted
			Net en = sim.createNet("en" + i);
			sim.connect(enableGen, i, en);
			sim.connect(dev, (inverted ? "-" : "") + "E" + i, en);
		}
		
		// Connections for address signals
		for (int i = 0; i < 3; i++) {
			Net addr = sim.createNet("addr" + i);
			sim.connect(addrGen, i+1, addr);
			sim.connect(dev, "A" + i, addr);
		}
		
		enablePort = enableGen.getUnit().getOutput();
		addrPort = addrGen.getUnit().getOutput();
		outputPort = dev.getUnit().getOutput();
		
		sim.prepare();
	}
	
	@Test
	public void testDisableOutput() throws Exception {
		// The input enable signals are:
		//   -E1  (bit 0 of enablePort)
		//   -E2  (bit 1 of enablePort)
		//   E3   (bit 2 of enablePort)
		// Output is disabled if -E1 is high, -E2 is high, or E3 is low.
		// So, only 4 (100) is a configuration where output is enabled.
		// Make sure that when output is disabled, all outputs are high.
		for (int enVal = 0; enVal < 8; enVal++) {
			if (enVal != 4) {
				enablePort.write(enVal, sim);
				sim.step();
				int output = outputPort.read();
				assertEquals(0xFF, output);
			}
		}
	}
	
	@Test
	public void testDecode() throws Exception {
		for (int i = 0; i < 8; i++) {
			enablePort.write(4, sim); // enable outputs
			addrPort.write(i, sim);
			sim.step();
			// Now the selected output should be low, and all other outputs
			// should be high.
			int expectedVal = 0xFF ^ (1 << i);
			assertEquals(expectedVal, outputPort.read());
		}
	}
}
