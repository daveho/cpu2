package io.github.daveho.logicsim;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class STuple extends SExp {
	private Token label;
	private List<SExp> children;
	
	public STuple() {
		children = new ArrayList<>();
	}
	
	public void setLabel(Token label) {
		this.label = label;
	}
	
	public void addChild(SExp child) {
		children.add(child);
	}
	
	@Override
	public List<SExp> getChildren() {
		return Collections.unmodifiableList(children);
	}
	
	@Override
	public boolean isNamed(String name) {
		return label.lexeme.equals(name);
	}
	
	@Override
	public SExp getChild(String name) {
		return children.stream().filter(e -> e.isNamed(name)).findFirst().get();
	}
	
	@Override
	public String asString() {
		throw new IllegalStateException("Can't get string value of tuple");
	}
	
	@Override
	public int asInt() {
		throw new IllegalStateException("Can't get integer value of tuple");
	}
}
