package io.github.daveho.logicsim;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class SimulationBuilder {
	/**
	 * Build a {@link Simulation} from a Kicad netlist.
	 * 
	 * @param netlist the Kicad netlist (result of {@link KicadNetlistParser})
	 * @return the {@link Simulation}
	 */
	public Simulation fromNetlist(SExp netlist, IDeviceFactory factory) {
		Simulation sim = new Simulation();
		
		// Parse components
		SExp components = netlist.getChild("components");
		for (SExp child : components.getChildren()) {
			// Child is a comp node
			// "ref" is the device name (e.g., "U1")
			String devName = child.getChild("ref").firstChild().toString();
			// "value" is the component type name (e.g., "74ls670")
			String compName = child.getChild("value").firstChild().toString();
			Device dev = factory.createDevice(compName, devName);
			sim.addDevice(dev);
		}
		
		// TODO: nets
		
		// TODO: connect pins to nets
		
		return sim;
	}
	
	// Just for testing
	public static void main(String[] args) throws FileNotFoundException {
		FileReader fr = new FileReader("/home/dhovemey/git/cpu2/hw/cpu2.net");
		KicadNetlistLexer lexer = new KicadNetlistLexer(fr);
		KicadNetlistParser parser = new KicadNetlistParser(lexer);
		SExp netlist = parser.parse();
		System.out.println("Parsed successfully!");
		
		SimulationBuilder builder = new SimulationBuilder();
		Simulation sim = builder.fromNetlist(netlist, new StandardDeviceFactory());
		System.out.println("Simulation created successfully!");
	}
}
