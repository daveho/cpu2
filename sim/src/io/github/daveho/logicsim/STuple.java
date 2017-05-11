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
	
	public List<SExp> getChildren() {
		return Collections.unmodifiableList(children);
	}
}
