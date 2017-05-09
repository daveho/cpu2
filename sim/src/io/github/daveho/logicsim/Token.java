package io.github.daveho.logicsim;

public class Token {
	public final String lexeme;
	public final TokenType type;
	
	public Token(String lexeme, TokenType type) {
		this.lexeme = lexeme;
		this.type = type;
	}
}