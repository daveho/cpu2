#! /usr/bin/env ruby

class Token
  attr_accessor :type, :lexeme, :lineno

  def initialize(type, lexeme, lineno)
    @type = type
    @lexeme = lexeme
    @lineno = lineno
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
    [ /^pattern/, :kw_pattern ],
    [ /^start/, :kw_start ],
    [ /^stop/, :kw_stop ],
    [ /^[A-Za-z\-][A-Za-z0-9_]*/, :ident ],
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
        @t = Token.new(pat[1], m[0], @lineno)
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

# Bitstring value class
class Bitstring
  def initialize(s)
    @str = s
  end

  def nbits
    return @str.length - 2
  end

  def to_s
    return @str
  end

  def bits
    return @str[2, @str.length]
  end

  def valtype
    return :bitstring
  end

  def append!(bitstring)
    @str += bitstring.bits
  end

  def drive!(sig, val)
    bits = val.bits
    mybits = self.bits
    updatedbits = mybits[0, sig.index] + bits + mybits[sig.index + sig.nbits, mybits.length]
    @str = '0b' + updatedbits
  end

  # Get value of specified signal as bitstring
  def get_signal_value(sig)
    bits = self.bits[sig.index, sig.index + sig.nbits]
    return Bitstring.new('0b' + bits)
  end

  def clone
    return Bitstring.new(@str.clone)
  end
end

# A variable reference
class VarRef
  def initialize(tok)
    @tok = tok
  end

  def ident
    return @tok.lexeme
  end

  def lineno
    return @tok.lineno
  end

  def valtype
    return :var_ref
  end
end

# Singleton representing the default value for a signal
class Default
  @@the_instance = self.new

  def self.instance
    return @@the_instance
  end

  def valtype
    return :default
  end
end

class Pattern
  attr_reader :name, :pairs

  def initialize(name)
    @name = name
    @pairs = []
  end

  def add_pair(signame, value)
    @pairs.push([signame, value])
  end

  def valtype
    return :pattern
  end
end

# Op class: list of pairs of signal name, value
class Op
  attr_reader :lineno, :pairs

  def initialize(lineno)
    @lineno = lineno
    @pairs = []
  end

  def add_pair(signame, val)
    @pairs.push([signame, val])
  end

  def optype
    return :op
  end
end

# Call class: call to expand a template
class Call
  attr_reader :lineno, :tname, :args

  def initialize(lineno, tname, args)
    @lineno = lineno
    @tname = tname
    @args = args
  end

  def optype
    return :call
  end
end

# Body class: list of ops
class Body
  attr_reader :ops

  def initialize
    @ops = []
  end

  def add_op(op)
    @ops.push(op)
  end
end

# This class can't be called "Signal" because there is a
# built-in class with that name.
class USignal
  attr_reader :name, :index, :nbits, :def_val

  def initialize(name, index, nbits, def_val)
    @name = name
    @index = index
    @nbits = nbits
    @def_val = def_val
    raise "Default value #{def_val.to_s} for signal #{name} has wrong number of bits" if def_val.nbits != nbits
  end
end

class Template
  attr_reader :params, :body

  def initialize(params, body)
    @params = params
    @body = body
  end
end

# Scope for looking up variable definitions
class Scope
  attr_reader :parent

  def initialize(parent=nil)
    @parent = parent
    @map = {}
  end

  def put(ident, val)
    @map[ident] = val
  end

  def lookup(var_ref)
    scope = self

    while !scope.nil?
      val = @map[var_ref.ident]
      return val if !val.nil?
      scope = scope.parent
    end

    raise "Line #{var_ref.lineno}: unknown variable #{var_ref.ident}"
  end
end

# An assembled instruction is a sequence of bitstrings representing
# microcode words.
class AssembledInstruction
  attr_reader :opcode, :words

  def initialize(opcode)
    @opcode = opcode
    @words = []
  end
end

class Ucode
  attr_reader :assembled_instructions

  def initialize
    @toplevel = Scope.new
    @signals = []
    @templates = {}
    @nsigbits = 0 # total number of signal bits
    @assembled_instructions = []
    # Saved values for signals specified in a pattern,
    # to restore them properly when the pattern is stopped
    @pattern_save = {}
  end

  def add_def(ident, val)
    @toplevel.put(ident, val)
  end

  def lookup_def(ident)
    return @toplevel.lookup(ident)
  end

  def add_signal(ident, nbits, val)
    @signals.push(USignal.new(ident, @nsigbits, nbits, val))
    @nsigbits += nbits
  end

  def add_template(ident, params, body)
    @templates[ident] = Template.new(params, body)
  end

  def add_pattern(pat)
    # Patterns resolve as values in the same way as defs
    @toplevel.put(pat.name, pat)
  end

  def assemble(opcode, body)
    ins = AssembledInstruction.new(opcode)
    initword = self._default_word
    self._assemble(ins, body, initword, @toplevel)
    @assembled_instructions.push(ins)
  end

  def _default_word
    def_word = Bitstring.new('0b')
    @signals.each do |sig|
      def_word.append!(sig.def_val)
    end
    return def_word
  end

  def _assemble(ins, body, word, scope)
    #puts "word is #{word.to_s}"

    body.ops.each do |op|
      case op.optype
        when :op
          word = self._assemble_op(ins, op, word, scope)
        when :call
          template = @templates[op.tname]
          raise "Line #{op.lineno}: unknown template #{op.tname}" if template.nil?
          raise "Line #{op.lineno}: wrong number of arguments in call to template #{op.tname}" if op.args.length != template.params.length
          word = self._expand_template(ins, template, op, word, scope)
      end
    end

    return word
  end

  def _assemble_op(ins, op, word, scope)
    word = word.clone

    op.pairs.each do |pair|
      signame = pair[0]

      if signame == "start"
        # Start generating specified pattern
        pat = scope.lookup(pair[1])
        raise "Line #{op.lineno}: Pattern #{pat.name} already started" if @pattern_save.has_key?(pat.name)
        save = self._save_values(word, op, pat)
        @pattern_save[pat.name] = save
        pat.pairs.each do |pp|
          self._drive_signal(word, op, pp[0], pp[1], scope)
        end
      elsif signame == "stop"
        # Stop generating specified pattern
        pat = scope.lookup(pair[1])
        raise "Line #{op.lineno}: Pattern #{pat.name} not started" if !@pattern_save.has_key?(pat.name)
        save = @pattern_save[pat.name]
        save.each_pair do |signame, orig_val|
          self._drive_signal(word, op, signame, orig_val, scope)
        end
        @pattern_save.delete(pat.name)
      else
        # Drive a signal directly
        val = pair[1]
        self._drive_signal(word, op, signame, val, scope)
      end
    end

    ins.words.push(word.clone)

    return word
  end

  # Save the current values of signals named in given
  # pattern (so they can be restored later)
  def _save_values(word, op, pat)
    save = {}
    pat.pairs.each do |pair|
      sig = self._signal(pair[0])
      raise "Line #{op.lineno}: unknown signal #{pair[0]}" if sig.nil?
      saved_val = word.get_signal_value(sig)
      save[pair[0]] = saved_val
    end
    return save
  end

  def _drive_signal(word, op, signame, val, scope)
    sig = self._signal(signame)
    raise "Line #{op.lineno}: unknown signal #{signame}" if sig.nil?
    resolved_val = self._resolve_val(val, sig, scope)
    raise "Line #{op.lineno}: could not resolve signal value #{val.to_s}" if resolved_val.nil?
    raise "Line #{op.lineno}: value for #{signame} not a bitstring" if resolved_val.valtype != :bitstring
    word.drive!(sig, resolved_val)
  end

  def _signal(signame)
    @signals.each do |sig|
      return sig if sig.name == signame
    end
    return nil
  end

  def _resolve_val(val, sig, scope)
    case val.valtype
      when :bitstring
        return val
      when :var_ref
        return scope.lookup(val)
      when :default
        return sig.def_val
    end
    return nil # should not be reached
  end

  def _expand_template(ins, template, call, word, scope)
    callscope = Scope.new(scope)

    # Bind argument values to template parameters
    template.params.zip(call.args) do |param, arg|
      if arg.valtype == :var_ref
        resolved_arg = scope.lookup(arg)
        raise "Line #{call.lineno}: could not resolve variable reference #{arg.ident}" if resolved_arg.nil?
        arg = resolved_arg
      end
      callscope.put(param, arg)
    end

    # Assemble template body
    return self._assemble(ins, template.body, word, callscope)
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
    elsif t.type == :kw_pattern
      self._parse_pattern
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
    val = self._parse_value
    self._error("invalid default value for signal") if val.valtype != :bitstring
    self._expect(:semi)
    @ucode.add_signal(id.lexeme, nbits.lexeme.to_i, val)
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
    self._expect(:kw_ins)
    self._expect(:lparen)
    opcode = self._expect(:int_literal)
    self._expect(:rparen)
    body = self._parse_body
    @ucode.assemble(opcode.lexeme.to_i, body)
  end

  def _parse_pattern
    self._expect(:kw_pattern)
    patname = self._expect(:ident)
    pat = Pattern.new(patname.lexeme)
    first = true
    while true
      t = @lexer.peek
      self._error("Unexpected EOF") if t.nil?
      break if t.type == :semi
      self._expect(:comma) if !first
      signame = self._expect(:ident)
      self._expect(:eq)
      sigval = self._expect(:ident)
      # Only a def constant can be used as the value of the signal
      value = @ucode.lookup_def(VarRef.new(sigval))
      pat.add_pair(signame.lexeme, value)
      first = false
    end
    self._expect(:semi)
    @ucode.add_pattern(pat)
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
    op = Op.new(@lexer.lineno)
    first = true
    while true
      t = @lexer.peek
      self._error("Unexpected EOF") if t.nil?
      break if t.type == :semi
      self._expect(:comma) if !first

      case t.type
        when :ident
          # This is either driving a signal directly,
          # or expanding a template
          signame = self._expect(:ident)

          if first and self._next_is?(:lparen)
            # Special case: this is a call to expand a template
            self._expect(:lparen)
            args = self._parse_args
            self._expect(:rparen)
            self._expect(:semi)
            return Call.new(t.lineno, signame.lexeme, args)
          end

          self._expect(:eq)
          val = self._parse_value
          op.add_pair(signame.lexeme, val)

        when :kw_start
          # Start driving a pattern
          self._expect(:kw_start)
          patname = self._expect(:ident)
          op.add_pair("start", VarRef.new(patname))

        when :kw_stop
          # Stop driving a pattern
          self._expect(:kw_stop)
          patname = self._expect(:ident)
          op.add_pair("stop", VarRef.new(patname))

        else
          self._error("Unexpected token #{t.lexeme}")
      end

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
      result = Bitstring.new(t.lexeme)
    when :ident
      result = VarRef.new(t)
    when :kw_default
      result = Default.instance
    when :int_literal
      # For convenience, 0 and 1 are accepted as synonyms for
      # 0b0 and 0b1
      if t.lexeme == '0' || t.lexeme == '1'
        result = Bitstring.new('0b' + t.lexeme)
      else
        self._error("Invalid bit literal: #{t.lexeme}")
      end
    else
      self._error("Invalid signal value: #{t.lexeme}")
    end
    return result
  end

  def _parse_args
    args = []
    first = true
    while true
      break if self._next_is?(:rparen)
      self._expect(:comma) if !first
      args.push(self._parse_value)
      first = false
    end
    return args
  end

  def _expect(expected_type)
    t = @lexer.next
    if t.type != expected_type
      self._error("Unexpected token #{t.lexeme} looking for #{expected_type}")
    end
    return t
  end

  def _next_is?(ttype)
    t = @lexer.peek
    return false if t.nil?
    return t.type == ttype
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

ucode.assembled_instructions.each do |ins|
  puts "Instruction #{ins.opcode}"
  count = 0
  ins.words.each do |word|
    puts "#{count}: #{word}"
    count += 1
  end
end

#while !l.peek.nil?
#  t = l.next
#  puts "#{t.type}: #{t.lexeme}"
#end
