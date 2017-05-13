package io.github.daveho.logicsim;

import java.util.List;

public abstract class SExp {
	public abstract List<SExp> getChildren();
	public abstract boolean isNamed(String name);
	public abstract SExp getChild(String name);
	
	public SExp firstChild() {
		return getChildren().stream().findFirst().get();
	}
}
