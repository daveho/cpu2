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
		
		// Create devices
		SExp components = netlist.getChild("components");
		for (SExp child : components.getChildren()) {
			// Child is a comp node
			// "ref" is the device name (e.g., "U1")
			String devName = child.getChild("ref").firstChild().asString();
			// "value" is the component type name (e.g., "74ls670")
			String compName = child.getChild("value").firstChild().asString();
			Device dev = factory.createDevice(compName, devName);
			sim.addDevice(dev);
		}
		
		// Create nets
		SExp nets = netlist.getChild("nets");
		for (SExp child : nets.getChildren()) {
			// Just get the name for now.
			// We'll make a second pass to connect the device
			// pins to the nets.
			String netName = child.getChild("name").firstChild().asString();
			sim.createNet(netName);
		}
		
		// Connect pins to nets
		for (SExp child : nets.getChildren()) {
			// Get name of net
			String netName = child.getChild("name").firstChild().asString();
			Net net = sim.getNet(netName);
			
			// Each child of a net labeled "node" is a connection
			// to a device pin
			for (SExp netChild : child.getChildren()) {
				if (netChild.isNamed("node")) {
					String devName = netChild.getChild("ref").firstChild().asString();
					int pinNumber = netChild.getChild("pin").firstChild().asInt();
					Device dev = sim.getDevice(devName);
					sim.connect(dev, pinNumber, net);
				}
			}
		}
		
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
