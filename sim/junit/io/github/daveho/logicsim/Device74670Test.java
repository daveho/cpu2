package io.github.daveho.logicsim;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class Device74670Test {
	private Simulation sim;
	private Device dev;
	private Device raGen;
	private Device dGen;
	private Device waGen;
	private Device reGen;
	private Device weGen;
	
	@Before
	public void setUp() {
		sim = new Simulation();
		
		dev = new Device74670("U1");
		sim.addDevice(dev);
		raGen = new DeviceGen("raGen", 2); // read address generator
		sim.addDevice(raGen);
		dGen = new DeviceGen("dGen", 4); // data generator
		sim.addDevice(dGen);
		waGen = new DeviceGen("waGen", 2); // write address generator
		sim.addDevice(waGen);
		reGen = new DeviceGen("reGen", 1); // read enable generator
		sim.addDevice(reGen);
		weGen = new DeviceGen("weGen", 1);
		sim.addDevice(weGen);

		// Connect raGen to read address pins
		for (int i = 0; i < 2; i++) {
			Net ra = sim.createNet("ra" + i);
			sim.connect(raGen, i+1, ra);
			sim.connect(dev, "RA" + i, ra);
		}
		
		// Connect dGen to data pins
		for (int i = 0; i < 4; i++) {
			Net d = sim.createNet("d" + i);
			sim.connect(dGen, i+1, d);
			sim.connect(dev, "D" + i, d);
		}
		
		// Connect waGen to write address pins
		for (int i = 0; i < 2; i++) {
			Net wa = sim.createNet("wa" + i);
			sim.connect(waGen, i+1, wa);
			sim.connect(dev, "WA" + i, wa);
		}
		
		// Connect reGen to -RE pin
		Net re = sim.createNet("re");
		sim.connect(reGen, 1, re);
		sim.connect(dev, "-RE", re);
		
		// Connect weGen to -WE pin
		Net we = sim.createNet("we");
		sim.connect(weGen, 1, we);
		sim.connect(dev, "-WE", we);
		
		sim.prepare();
	}
	
	@Test
	public void testReadDisable() throws Exception {
		sim.drive(reGen, 1, 1);
		sim.step();
		assertTrue(dev.getUnit("Q").getOutput().allPinsAre(PinMode.HI_Z));
	}
	
	@Test
	public void testWriteAndRead() throws Exception {
		int[] data = { 11, 5, 3, 8 };
		
		sim.drive(reGen, 1, 1); // de-assert -RE
		
		for (int i = 0; i < 4; i++) {
			sim.drive(weGen, 1, 1); // de-assert -WE
			waGen.getUnit().getOutput().write(i, sim); // assert register address for register i
			dGen.getUnit().getOutput().write(data[i], sim); // write data
			sim.step();
			sim.drive(weGen, 1, 0); // assert -WE
			sim.step();
			sim.drive(weGen, 1, 1); // de-assert -WE, data should now be stored in register i
			sim.step();
		}
		
		for (int i = 0; i < 4; i++) {
			raGen.getUnit().getOutput().write(i, sim); // assert register address for register i
			sim.step();
			sim.drive(reGen, 1, 0); // assert -RE
			sim.step();
			int val = dev.getUnit("Q").getOutput().read();
			assertEquals(data[i], val);
			sim.drive(reGen, 1, 1); // de-assert -RE
		}
	}
	
	// there are no doubt some more esoteric tests we could write,
	// such as writing to one register while reading from another,
	// or writing to a register while reading from it
}
