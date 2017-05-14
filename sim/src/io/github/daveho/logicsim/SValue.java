package io.github.daveho.logicsim;

import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

public class SValue extends SExp {
	public final Token token;
	
	public SValue(Token token) {
		this.token = token;
	}
	
	@Override
	public List<SExp> getChildren() {
		return Collections.emptyList();
	}
	
	@Override
	public boolean isNamed(String name) {
		return false;
	}
	
	@Override
	public SExp getChild(String name) {
		throw new NoSuchElementException("SValue node does not have children");
	}
	
	@Override
	public String asString() {
		return token.lexeme;
	}
	
	@Override
	public int asInt() {
		return Integer.parseInt(asString());
	}
}
