#! /usr/bin/env ruby

class Token
  attr_accessor :type, :lexeme

  def initialize(type, lexeme)
    self.type = type
    self.lexeme = lexeme
  end
end

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
    [ /^=/, :eq ],
    [ /^0b[01]+/, :binary_literal ],
    [ /^\d+/, :int_literal ],
    [ /^signal/, :kw_signal ],
    [ /^template/, :kw_template ],
    [ /^default/, :kw_default ],
    [ /^def/, :kw_def ],
    [ /^ins/, :kw_ins ],
    [ /^[A-Za-z][A-Za-z0-9_]*/, :ident ],
  ]

  COMMENT = /^\s*#/

  # Read and consume next token
  def next
    _fill()
    self._error("Unexpected end of input") if @t.nil?
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
    while @line.nil? || @line.lstrip() == '' || COMMENT.match(@line)
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
        @t = Token.new(pat[1], m[0])
        @line = m.post_match().lstrip()
        return
      end
    end

    # None of the patterns matched
    self._error("Unrecognized token #{@line}")
  end

  def lineno
    return @lineno
  end
end

class Bitstring
  def initialize(s)
    @str = s
  end
end

# Op class: list of pairs of signal name, value
class Op
  def initialize
    @pairs = []
  end

  def add_pair(signame, val)
    @pairs.push([signame, val])
  end
end

# Body class: list of ops
class Body
  def initialize
    @ops = []
  end

  def add_op(op)
    @ops.push(op)
  end
end

# Value class: represents a bit string value, which could
# be literal, an identifier, or "default"
class Value
end

class Ucode
  def initialize
  end

  def add_def(ident, val)
    # TODO
  end

  def add_signal(ident, nbits, val)
    # TODO
  end

  def add_template(ident, params, body)
    # TODO
  end
end

class Parser
  def initialize(lexer, ucode)
    @lexer = lexer
    @ucode = ucode
  end

  def parse
    while true
      break if !self._parse_top_level()
    end
  end

  def _parse_top_level
    t = @lexer.peek
    return false if t.nil?

    if t.type == :kw_def
      self._parse_def
    elsif t.type == :kw_signal
      self._parse_signal
    elsif t.type == :kw_template
      self._parse_template
    elsif t.type == :kw_ins
      self._parse_ins
    else
      self._error("Unexpected token #{t.lexeme} looking for top-level item")
    end

    return true
  end

  def _parse_def
    self._expect(:kw_def)
    id = self._expect(:ident)
    val = self._expect(:binary_literal)
    self._expect(:semi)
    @ucode.add_def(id.lexeme, Bitstring.new(val.lexeme))
  end

  def _parse_signal
    self._expect(:kw_signal)
    id = self._expect(:ident)
    self._expect(:lbracket)
    nbits = self._expect(:int_literal)
    self._expect(:rbracket)
    self._expect(:kw_default)
    val = self._expect(:binary_literal)
    self._expect(:semi)
    @ucode.add_signal(id.lexeme, nbits.lexeme.to_i, Bitstring.new(val.lexeme))
  end

  def _parse_template
    self._expect(:kw_template)
    id = self._expect(:ident)
    self._expect(:lparen)
    params = self._parse_param_list
    self._expect(:rparen)
    body = self._parse_body
    @ucode.add_template(id.lexeme, params, body)
  end

  def _parse_ins
    raise "Instruction not supported yet"
  end

  def _parse_param_list
    params = []
    first = true
    while true
      t = @lexer.peek
      self._error("Unexpected EOF") if t.nil?
      break if t.type == :rparen
      self._expect(:comma) if !first
      param = self._expect(:ident)
      params.push(param.lexeme)
      first = false
    end
    return params
  end

  def _parse_body
    self._expect(:lbrace)
    body = Body.new
    while true
      t = @lexer.peek
      self._error("Unexpected EOF") if t.nil?
      break if t.type == :rbrace
      op = self._parse_op
      body.add_op(op)
    end
    self._expect(:rbrace)
    return body
  end

  def _parse_op
    op = Op.new
    first = true
    while true
      t = @lexer.peek
      self._error("Unexpected EOF") if t.nil?
      break if t.type == :semi
      self._expect(:comma) if !first
      signame = self._expect(:ident)
      self._expect(:eq)
      val = self._parse_value
      op.add_pair(signame, val)
      first = false
    end
    self._expect(:semi)
    return op
  end

  def _parse_value
    t = @lexer.next
    result = nil
    case t.type
    when :binary_literal
      # TODO: construct proper Value
      result = Value.new
    when :ident
      # TODO: construct proper Value
      result = Value.new
    when :kw_default
      # TODO: construct proper Value
      result = Value.new
    when :int_literal
      # For convenience, 0 and 1 are accepted as synonyms for
      # 0b0 and 0b1
      if t.lexeme == '0' || t.lexeme == '1'
        # TODO: construct proper Value
        result = Value.new
      else
        self._error("Invalid bit literal: #{t.lexeme}")
      end
    else
      self._error("Invalid signal value: #{t.lexeme}")
    end
    return result
  end

  def _expect(expected_type)
    t = @lexer.next
    if t.type != expected_type
      self._error("Unexpected token #{t.lexeme} looking for #{expected_type}")
    end
    return t
  end

  def _error(msg)
    STDERR.puts "Line #{@lexer.lineno}: #{msg}"
    exit 1
  end
end

l = Lexer.new(STDIN)

ucode = Ucode.new
p = Parser.new(l, ucode)
p.parse

#while !l.peek.nil?
#  t = l.next
#  puts "#{t.type}: #{t.lexeme}"
#end