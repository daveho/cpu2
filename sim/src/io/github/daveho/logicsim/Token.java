package io.github.daveho.logicsim;

import io.github.daveho.logicsim.KicadNetlistLexer.TokenType;

public class Token {
	final String lexeme;
	final TokenType type;
	
	public Token(String lexeme, TokenType type) {
		this.lexeme = lexeme;
		this.type = type;
	}
}