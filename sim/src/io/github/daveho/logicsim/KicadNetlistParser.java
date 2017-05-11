package io.github.daveho.logicsim;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class KicadNetlistParser {
	private KicadNetlistLexer lexer;
	
	public KicadNetlistParser(KicadNetlistLexer lexer) {
		this.lexer = lexer;
	}
	
	public SExp parse() {
		return parseTuple();
	}

	private SExp parseTuple() {
		STuple result = new STuple();
		
		expect(TokenType.LPAREN);
		Token label = lexer.next();
		if (label.type != TokenType.IDENT) {
			throw new IllegalStateException("Initial item in tuple is " + label.type + ", not identifier");
		}
		result.setLabel(label);
		
		for (;;) {
			Token t = lexer.peek();
			if (t == null) {
				throw new IllegalStateException("Unexpected EOF parsing tuple");
			}
			if (t.type == TokenType.RPAREN) {
				expect(TokenType.RPAREN);
				break;
			}
			result.addChild(parseValue());
		}
		
		return result;
	}
	
	private SExp parseValue() {
		Token t = lexer.peek();
		if (t == null) {
			throw new IllegalStateException("Unexpected EOF parsing value");
		}
		if (t.type == TokenType.LPAREN) {
			return parseTuple();
		} else if (t.type.isValueType()) {
			return new SValue(lexer.next());
		} else {
			throw new IllegalStateException("Unexpected token " + t.type + " parsing value");
		}
	}
	
	private Token expect(TokenType type) {
		Token t = lexer.next();
		if (t.type != type) {
			throw new IllegalStateException("Parse error: expected " + type + ", saw " + t.type);
		}
		return t;
	}
	
	// Just for testing
	public static void main(String[] args) throws FileNotFoundException {
		FileReader fr = new FileReader("/home/dhovemey/git/cpu2/hw/cpu2.net");
		KicadNetlistLexer lexer = new KicadNetlistLexer(fr);
		KicadNetlistParser parser = new KicadNetlistParser(lexer);
		SExp netList = parser.parse();
		System.out.println("Parsed successfully!");
	}
}
