#! /usr/bin/env ruby

# Token class
class Token
  attr_accessor :type, :lexeme

  def initialize(type, lexeme)
    self.type = type
    self.lexeme = lexeme
  end
end

# Lexical analyzer class
class Lexer
  def initialize(f)
    @f = f
    @line = nil
    @t = nil
    @eof = false
    @lineno = 0
  end

  PATTERNS = [
    [ /^;/, :semi],
    [ /^,/, :comma ],
    [ /^\{/, :lbrace ],
    [ /^\}/, :rbrace ],
    [ /^\[/, :lbracket ],
    [ /^\]/, :rbracket ],
    [ /^\(/, :lparen ],
    [ /^\)/, :rparen ],
    [ /^0b\d+/, :binary_literal ],
    [ /^\d+/, :int_literal ],
    [ /^def/, :kw_def ],
    [ /^signal/, :kw_signal ],
    [ /^template/, :kw_template ],
    [ /^default/, :kw_default ],
    [ /^ins/, :kw_ins ],
    [ /^[A-Za-z][A-Za-z0-9_]*/, :ident ],
  ]

  # Read and consume next token
  def next
    _fill()
    raise "Unexpected end of input" if @t.nil?
    tok, @t = @t, nil
    return tok
  end

  # Return next token without consuming it
  def peek
    _fill()
    return @t
  end

  # Read one token, saving it in @t
  def _fill
    return if @eof || !@t.nil?

    # read a line of input
    while @line.nil? || @line.lstrip() == ''
      @line = @f.gets()
      if @line.nil?  # end of file?
        @eof = true
        return
      end
      @lineno = @lineno + 1
    end

    @line.lstrip!

    # Try all of the patterns
    PATTERNS.each do |pat|
      if m = pat[0].match(@line)
        # Found a match!
        @t = Token::new(pat[1], m[0])
        @line = m.post_match().lstrip()
        return
      end
    end

    # None of the patterns matched
    raise "Unrecognized token: #{@line}"
  end

  def lineno
    return @lineno
  end
end

l = Lexer.new(STDIN)
while !l.peek.nil?
  t = l.next
  puts "#{t.type}: #{t.lexeme}"
end
