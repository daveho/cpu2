package io.github.daveho.logicsim;

/**
 * 4 bit up/down counter with async load.
 * @see <a href="http://assets.nexperia.com/documents/data-sheet/74HC191.pdf">74HC191 datasheet</a>
 */
public class Device74191 extends Device {
	private int count;
	private int lastClock;
	private boolean needRipple;
	
	public Device74191(String name) {
		super(name);
		addInput(1, "D1");
		addOutput(2, "Q1");
		addOutput(3, "Q0");
		addInput(4, "-CE");
		addInput(5, "-U/D");
		addOutput(6, "Q2");
		addOutput(7, "Q3");
		addGnd(8);
		addInput(9, "D3");
		addInput(10, "D2");
		addInput(11, "-PL");
		addOutput(12, "TC");
		addOutput(13, "-RC");
		addInput(14, "CP");
		addInput(15, "D0");
		addVcc(16);
		
		// For whatever reason, in my breadboard circuits the 74HC191 always
		// seems to have an initial count of 1 (maybe because of noise
		// when power is applied).  In any case, any properly
		// designed circuit won't depend on the the initial count.
		count = 1;
		
		lastClock = 0;
		
		// Set to true when a ripple carry pulse is needed
		needRipple = false;
	}

	@Override
	public void update(Simulation sim) {
		Port inputs = getUnit("D").getInput();
		Port outputs = getUnit("Q").getOutput();

		int curClock = getPinValue("CP");
		int mode = getPinValue("-U/D");

		if (getPinValue("-PL") == 0) {
			// Parallel load
			count = inputs.read();
			
			// TODO: do we need to generate TC here?
		} else if (getPinValue("-CE") == 0) {
			// Counting enabled
			
			// Handle -RC pulse generation
			if (needRipple) {
				if (curClock == 0 && lastClock == 1) {
					// Negative clock edge, drive -RC low
					sim.drive(this, "-RC", 0);
				} else if (curClock == 1 && lastClock == 0) {
					// Positive clock edge: -RC pulse has finished
					sim.drive(this, "-RC", 1);
					needRipple = false;
				}
			}
			
			if (lastClock == 0 && curClock == 1) {
				// Clock pulse arrived, increment or decrement the counter
				if (mode == 0) {
					// count up
					count = (count + 1) & 0xF;
				} else {
					// count down
					count = (count - 1) & 0xF;
				}
				
				// Generate TC (terminal count) output
				int tc = ((count == 15 && mode == 0) || (count == 0 && mode == 1)) ? 1: 0;
				sim.drive(this, "TC", tc);
				
				// If we're at the terminal count, initiate a ripple carry pulse
				if (tc == 1) {
					needRipple = true;
				}
			}
		}
		
		// Drive outputs
		outputs.write(count, sim);
	}

	@Override
	public Unit createUnit(String unitName) {
		if (unitName.equals("D")) {
			// Input-only unit for data (parallel load) inputs
			return DeviceUtil.getInputUnit(this, "D", 4);
		} else if (unitName.equals("Q")) {
			// Output-only unit for count outputs
			return DeviceUtil.getOutputUnit(this, "Q", 4);
		} else {
			throw new IllegalArgumentException("Unknown unit: " + unitName);
		}
	}
}
