package io.github.daveho.logicsim;

import java.util.ArrayList;
import java.util.List;

public class Net {
	private String name;
	private List<Connection> connections;
	private int value;
	
	private Net() {
		this.connections = new ArrayList<>();
	}
	
	public Net(String name) {
		this();
		this.name = name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void addConnection(Connection conn) {
		connections.add(conn);
	}
	
	public List<Connection> getConnections() {
		return connections;
	}
	
	public void setValue(int value) {
		this.value = value;
	}
	
	public int getValue() {
		return value;
	}
}
