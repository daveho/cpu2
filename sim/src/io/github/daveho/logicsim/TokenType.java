package io.github.daveho.logicsim;

public enum TokenType {
	LPAREN,
	RPAREN,
	IDENT,
	INT_LITERAL,
	STRING_LITERAL,;

	public boolean isValueType() {
		return this == IDENT || this == INT_LITERAL || this == STRING_LITERAL;
	}
}
