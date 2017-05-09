package io.github.daveho.logicsim;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;
import java.util.NoSuchElementException;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Class to do lexical analysis of a Kicad netlist.
public class KicadNetlistLexer {
	enum TokenType {
		LPAREN,
		RPAREN,
		IDENT,
		INT_LITERAL,
		STRING_LITERAL,
	}
	
	private static final Pattern ALL_DIGITS = Pattern.compile("^[0-9]+$");
	
	private PushbackReader reader;
	private Token next;
	private boolean atEof;

	public KicadNetlistLexer(Reader r) {
		this.reader = new PushbackReader(r, 1);
		this.next = null;
		this.atEof = false;
	}
	
	public boolean hasNext() {
		fill();
		return next != null;
	}
	
	public Token next() {
		if (!hasNext()) {
			throw new NoSuchElementException();
		}
		Token result = next;
		next = null;
		return result;
	}
	
	public Token peek() {
		if (!hasNext()) {
			return null;
		}
		return next;
	}
	
	public void fill() {
		if (next != null || atEof) {
			return;
		}
		
		eat(c -> Character.isWhitespace(c));
		
		int c = read();
		if (c < 0) {
			return;
		}
		
		if (c == '(') {
			next = new Token("(", TokenType.LPAREN);
		} else if (c == ')') {
			next = new Token(")", TokenType.RPAREN);
		} else if (isIdChar(c)) {
			unread(c);
			String lexeme = eat(ch -> isIdChar(ch));
			TokenType type = isAllDigits(lexeme) ? TokenType.INT_LITERAL : TokenType.IDENT;
			next = new Token(lexeme, type);
		} else if (c == '"') {
			unread(c);
			String lexeme = scanStringLiteral();
			next = new Token(lexeme, TokenType.STRING_LITERAL);
		} else {
			throw new RuntimeException("Unrecognized character: " + ((char)c));
		}
	}
	
	private String eat(Predicate<Integer> pred) {
		StringBuilder buf = new StringBuilder();
		for (;;) {
			int c = read();
			if (c < 0) {
				break;
			}
			if (!pred.test(c)) {
				unread(c);
				break;
			}
			buf.append((char)c);
		}
		String result = buf.toString();
		return !result.isEmpty() ? result : null;
	}

	private void unread(int c) {
		try {
			reader.unread(c);
		} catch (IOException e) {
			throw new RuntimeException("This should not happen", e);
		}
	}
	
	private String scanStringLiteral() {
		StringBuilder buf = new StringBuilder();
		
		buf.append((char)read()); // initial "
		for (;;) {
			int c = read();
			if (c < 0) {
				throw new RuntimeException("EOF while scanning string literal");
			}
			if (c == '"') {
				// done
				buf.append((char)c);
				break;
			} else if (c == '\\') {
				throw new UnsupportedOperationException("Escape sequences not handled yet");
			}
			buf.append((char)c);
		}
		
		return buf.toString();
	}
	
	private boolean isIdChar(int c) {
		return (c >= 'A' && c <= 'a')
				|| (c >= 'a' && c <= 'z')
				|| (c >= '0' && c <= '9')
				|| (c == '/')
				|| (c == '.')
				|| (c == '~')
				|| (c == '-');
	}
	
	private boolean isAllDigits(String s) {
		Matcher m = ALL_DIGITS.matcher(s);
		return m.find();
	}
	
	private int read() {
		try {
			int c = reader.read();
			if (c < 0) {
				atEof = true;
			}
			return c;
		} catch (IOException e) {
			throw new RuntimeException("Error reading from netlist", e);
		}
	}
	
	// Just for testing
	public static void main(String[] args) throws FileNotFoundException {
		FileReader fr = new FileReader("/home/dhovemey/git/cpu2/hw/cpu2.net");
		KicadNetlistLexer lexer = new KicadNetlistLexer(fr);
		while (lexer.hasNext()) {
			Token tok = lexer.next();
			System.out.println(tok.type + ": " + tok.lexeme);
		}
	}
}
