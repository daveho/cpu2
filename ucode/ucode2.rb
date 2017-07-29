#! /usr/bin/ruby

# Experiment to generate microcode from a Ruby program,
# where the waveform templates and instructions are specified
# using Ruby code.

# Utility classes

# Value class for deasserting a signal
# (driving it to its default value)
class Deassert
  def play(sig, word)
    return word.drive(sig, sig.defval)
  end
end

# Value class for asserting a signal (driving it to the opposite
# of its default value)
class Assert
  def play(sig, word)
    return word.drive(sig, sig.defval.negate)
  end
end

# Bitstring class (when used as a value, drives a signal to an
# arbitrary bit pattern)
class Bitstring
  attr_reader :bits

  def initialize(s)
    if s.is_a?(Fixnum)
      raise "Not a 0 or 1" if s != 0 && s != 1
      s = s.to_s
    end
    @bits = s
  end

  def nbits
    return @bits.length
  end

  def negate
    return Bitstring.new(@bits.tr('01', '10'))
  end

  def to_s
    return @bits
  end

  def drive(sig, bs)
    index = sig.index
    updated_bits = @bits[0, index] + bs.bits + @bits[index + bs.nbits, @bits.length - index - bs.nbits]
    return Bitstring.new(updated_bits)
  end

  def play(sig, word)
    return word.drive(sig, self)
  end
end

# Signal class: represents one or more bits of the microcode control word
class USignal
  attr_reader :name, :defval
  attr_accessor :index

  def initialize(name, defval)
    @name = name
    @defval = defval
  end

  def nbits
    return @defval.nbits
  end
end

# Waveform class: drive specified signals to specified values for some
# number of clocks
class Waveform
  def initialize
    @sig_waveforms = []
  end

  def play(signame, *values)
    @sig_waveforms.push([signame, values])
  end

  # Check that all of the signal waveforms have the same length
  def check
    len = 0
    @sig_waveforms.each do |pair|
      values = pair[1]
      if len == 0
        len = values.length
      else
        return false if values.length != len
      end
    end
    return true
  end

  def nsignals
    return @sig_waveforms.length
  end

  # This assumes that the check method has been called to ensure that
  # all signal waveforms are the same length.  It also assumes that
  # there is at least one signal waveform.
  def nclocks
    return @sig_waveforms[0][1].length
  end

  # Get name of signal for specified signal waveform (i is the signal
  # waveform index)
  def signame(i)
    return @sig_waveforms[i][0]
  end

  # Get value of specified signal waveform (i is signal waveform index)
  # at time t
  def sigval(i, t)
    return @sig_waveforms[i][1][t]
  end
end

# Sequence of microcode words to be executed for a given instruction
class AssembledInstruction
  attr_reader :opcode, :words

  def initialize(opcode, words)
    @words = words
  end
end

# Global assert/deassert values, global bitstring values

# Function to return an Assert value, indicating that a
# signal should be asserted
def x
  return Assert.new
end

# Function to return a Deassert value, indicating that a
# signal should be deasserted
def _
  return Deassert.new
end

# Data direction for reads
DIR_READ = Bitstring.new(0)

# Data direction for writes
DIR_WRITE = Bitstring.new(1)

# Assembler class

class Assembler
  def initialize
    @signals = []
    @assembled_instructions = []
  end

  def defsig(name, defval)
    sig = USignal.new(name, defval)
    @signals.push(sig)
  end

  def get_signal(signame)
    @signals.each do |sig|
      return sig if sig.name == signame
    end
    raise "Unknown signal #{signame}"
  end

  def default_word
    bits = ''
    # Signals are added least significant to most significant,
    # so reverse them
    @signals.reverse.each do |sig|
      bits += sig.defval.bits
    end
    return Bitstring.new(bits)
  end

  def add_ins
    wf = Waveform.new
    yield wf
    # Make sure all signal waveforms are the same length
    raise "Inconsistent signal waveform lengths" if !wf.check

    words = []

    # Use default word as initial word
    word = self.default_word

    # Assemble the actual microcode words
    (0..wf.nclocks-1).each do |t|
      (0..wf.nsignals-1).each do |i|
        signame = wf.signame(i)
        sig = self.get_signal(signame)
        sigval = wf.sigval(i, t)
        word = sigval.play(sig, word)
      end
      words.push(word)
    end

    puts "Instruction:"
    words.each { |w| puts w }

    ins = AssembledInstruction.new(@assembled_instructions.length, words)
    @assembled_instructions.push(ins)
  end

  # Assign indices to signals (only do this after all signals have
  # been added)
  def assign_indices
    index = 0
    @signals.each do |sig|
      sig.index = index
      index += sig.nbits
    end
  end
end

# Definitions and helper functions related to bit patterns
# for signal generation

# Addresses for register pairs
$pairs = {
  'r01' => Bitstring.new('00'),
  'r23' => Bitstring.new('01'),
  'r45' => Bitstring.new('10'),
  'r67' => Bitstring.new('11')
}

# Get pair address of given single register (e.g., 'r0', 'r1', etc.)
def reg_to_pair(reg)
  rnum = reg[1].to_i
  rnum -= 1 if rnum.odd?
  return $pairs['r' + rnum.to_s + (rnum+1).to_s]
end

# ALU operation codes
# Note that first four bits are the actual operation code,
# the fifth bit is the ALU mode (1=logic, 0=math), and
# the sixth bit is the carry in
$alu_ops = {
  'alu_logic_A' => Bitstring.new('111110'),
  'alu_logic_B' => Bitstring.new('101010')
}

# Get the ALU op needed to select a value from given source register
# (e.g., 'r0', 'r1')
def src_reg_to_alu_op(reg)
  rnum = reg[1].to_i
  return rnum.even? ? $alu_ops['alu_logic_A'] : $alu_ops['alu_logic_B']
end

# Get the destination bank write signal for given GP reg
def dest_reg_to_bank(reg)
  rnum = reg[1].to_i
  return rnum.even? ? 'wrGPLo' : 'wrGPHi'
end

# Waveform template functions

def nop(wf)
  wf.play '-endUncond', x
end

# Move from source GP register to destination GP register
def mov(wf, dest_reg, src_reg)
  r = reg_to_pair(src_reg)
  w = reg_to_pair(dest_reg)
  u = src_reg_to_alu_op(src_reg)
  dest_bank = dest_reg_to_bank(dest_reg)

  wf.play 'rdGPAddr',   r, r, r, _
  wf.play 'rdGP',       x, x, x, _
  wf.play 'wrGPAddr',   w, w, w, _
  wf.play dest_bank,    _, x, _, _
  wf.play 'aluOp',      u, u, u, _
  wf.play 'aluOut',     x, x, x, _
  wf.play '-endUncond', _, _, _, x
end

# Memory load from address specified by GP register pair into GP register
def ld(wf, dest_reg, src_pair)
  d = DIR_READ
  a = $pairs[src_pair]
  w = reg_to_pair(dest_reg)
  dest_bank = dest_reg_to_bank(dest_reg)

  #                     +--------------- 0: read source address, assert to left/right busses
  #                     |  +------------ 1: latch source address, drive address onto addr bus
  #                     |  |  +--------- 2: start ext read, start reg write, gate ext data to ALU data bus
  #                     |  |  |  +------ 3: clock data into dest register
  #                     |  |  |  |  +--- 4: end ext read, end instruction
  #                     |  |  |  |  |
  wf.play 'rdGPAddr',   a, a, a, _, _
  wf.play 'rdGP',       x, x, x, _, _
  wf.play 'latchAddr',  _, x, x, x, _
  wf.play 'driveAddr',  _, x, x, x, _
  wf.play 'memDir',     d, d, d, d, _
  wf.play 'rwMem',      _, _, x, x, _
  wf.play 'extRW',      _, _, x, x, _
  wf.play 'wrGPAddr',   w, w, w, w, _
  wf.play dest_bank,    _, _, x, _, _
  wf.play '-endUncond', _, _, _, _, x
end

# Memory store from GP register to address specified by GP register pair
def st(wf, dest_pair, src_reg)
  d = DIR_WRITE
  a = $pairs[dest_pair]
  r = reg_to_pair(src_reg)
  u = src_reg_to_alu_op(src_reg)

  # Note that we don't need to latch the generated address:
  # we can just use transparent mode because none of the GP
  # registers can change during the store

  #                     +------------ 0: read dest addr, assert to l/r busses, read src reg to ALU data bus
  #                     |  +--------- 1: send reg data to external data bus, start external write
  #                     |  |  +------ 2: clock data into external memory
  #                     |  |  |  +--- 3: end external write, end instruction
  #                     |  |  |  |
  wf.play 'rdGPAddr',   a, a, a, _
  wf.play 'rdGP',       x, x, x, _
  wf.play 'driveAddr',  x, x, x, _
  wf.play 'aluOp',      u, u, u, _
  wf.play 'aluOut',     x, x, x, _
  wf.play 'memDir',     d, d, d, _
  wf.play 'rwMem',      _, x, x, _
  wf.play 'extRW',      _, x, _, _
  wf.play '-endUncond', _, _, _, x
end

# Generate microcode

class GenUcode < Assembler
  def gen_instructions
    # Define signals and default values

    # ROM 1 (LSB to MSB)
    self.defsig 'rdGP', Bitstring.new(0)
    self.defsig 'rdGPAddr', Bitstring.new('00')
    self.defsig 'rdPC', Bitstring.new(0)
    self.defsig 'rwMem', Bitstring.new(0)
    self.defsig 'memDir', Bitstring.new(0)    # 0=read, 1=write
    self.defsig 'driveAddr', Bitstring.new(0)
    self.defsig 'extRW', Bitstring.new(0)     # 1=assert external read/write

    # ROM 2 (LSB to MSB)
    self.defsig 'wrGPLo', Bitstring.new(0)
    self.defsig 'wrGPHi', Bitstring.new(0)
    self.defsig 'wrGPAddr', Bitstring.new('00')
    self.defsig 'wrPCLo', Bitstring.new(0)
    self.defsig 'wrPCHi', Bitstring.new(0)
    self.defsig 'unused2', Bitstring.new('00')

    # ROM 3 (LSB to MSB)
    self.defsig 'aluOut', Bitstring.new(0)
    self.defsig 'pcClk', Bitstring.new(0)
    self.defsig 'aluOp', Bitstring.new('000000')

    # ROM 4 (LSB to MSB)
    self.defsig '-endIfEq', Bitstring.new(1)
    self.defsig '-endIfNew', Bitstring.new(1)
    self.defsig '-endIfNoCarry', Bitstring.new(1)
    self.defsig 'endIfNeqCarry', Bitstring.new(0)
    self.defsig 'endIfNeqNoCarry', Bitstring.new(0)
    self.defsig '-endUncond', Bitstring.new(1)
    self.defsig 'latchAddr', Bitstring.new(0)
    self.defsig 'latchCC', Bitstring.new(0)

    # Assign indices to signals
    self.assign_indices

    # Nop instruction (1)
    self.add_ins { |wf| nop(wf) }

    # GP register/register move instructions (56)
    self._all_gp_dest_src do |dest_reg, src_reg|
      self.add_ins { |wf| mov(wf, dest_reg, src_reg) }
    end

    # Memory load using gp pair to generate address (32)
    self._all_gp_reg_pair do |reg, pair|
      self.add_ins { |wf| ld(wf, reg, pair) }
    end

    # Memory store using gp pair to generate address (32)
    self._all_gp_reg_pair do |reg, pair|
      self.add_ins { |wf| st(wf, pair, reg) }
    end
  end

  # Generate all gp dest/src register combinations (where src != dest)
  def _all_gp_dest_src
    (0..7).each do |dest_reg|
      (0..7).each do |src_reg|
        if src_reg != dest_reg
          yield "r#{dest_reg}", "r#{src_reg}"
        end
      end
    end
  end

  # Generate all gp register/pair combinations
  def _all_gp_reg_pair
    (0..7).each do |reg|
      (0..3).each do |x|
        yield "r#{reg}", "r#{x*2}#{x*2+1}"
      end
    end
  end

end

asm = GenUcode.new
asm.gen_instructions

puts "Default word is #{asm.default_word}"

# vim:set expandtab:
# vim:set tabstop=2:
