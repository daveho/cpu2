#! /usr/bin/ruby

require 'optparse'

# Experiment to generate microcode from a Ruby program,
# where the waveform templates and instructions are specified
# using Ruby code.

########################################################################
# Utility classes
########################################################################

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
    @opcode = opcode
    @words = words
  end
end

# A mixin for reading and writing binary data from/to a file.
# Can be used to extend an object supporting the standard
# file I/O methods.
module BinaryFile
  def read_byte
    return read(1).unpack("C")[0]
  end

  def read_int
    val = read_int_unsigned()
    if (val & 0x80000000) != 0
      neg = -(0x100000000 - val)
      #STDOUT.puts "converted #{val} to #{neg}"
      val = neg
    end
    return val
  end

  def read_int_unsigned
    return read(4).unpack("N")[0]
  end

  def read_str
    # FIXME: fails for multi-byte character sets
    len = read_int()
    return read(len)
  end

  def write_byte(b)
    write([b].pack("C"))
  end

  def write_int(i)
    write([i].pack("N"))
  end

  def write_str(s)
    # FIXME: fails for multi-byte character sets
    write_int(s.length)
    write(s)
  end
end

########################################################################
# Global assert/deassert values, global bitstring values
########################################################################

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

########################################################################
# Assembler class
########################################################################

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

    opcode = @assembled_instructions.length

    puts "Instruction #{opcode}:"
    words.each { |w| puts w }

    ins = AssembledInstruction.new(opcode, words)
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

  def get_assembled_instruction(opcode)
    @assembled_instructions.each do |ins|
      return ins if ins.opcode == opcode
    end
    # return default instruction
    return @assembled_instructions[0]
  end
end

########################################################################
# Definitions and helper functions related to bit patterns
# for signal generation
########################################################################

# Data direction for reads
DIR_READ = Bitstring.new(0)

# Data direction for writes
DIR_WRITE = Bitstring.new(1)

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

########################################################################
# Function to define signals
########################################################################

def defsignals(asm)
    # Define signals and default values

    # ROM 1 (LSB to MSB)
    asm.defsig 'rdGP', Bitstring.new(0)
    asm.defsig 'rdGPAddr', Bitstring.new('00')
    asm.defsig 'rdPC', Bitstring.new(0)
    asm.defsig 'rwMem', Bitstring.new(0)
    asm.defsig 'memDir', Bitstring.new(0)    # 0=read, 1=write
    asm.defsig 'driveAddr', Bitstring.new(0)
    asm.defsig 'extRW', Bitstring.new(0)     # 1=assert external read/write

    # ROM 2 (LSB to MSB)
    asm.defsig 'wrGPLo', Bitstring.new(0)
    asm.defsig 'wrGPHi', Bitstring.new(0)
    asm.defsig 'wrGPAddr', Bitstring.new('00')
    asm.defsig 'wrPCLo', Bitstring.new(0)
    asm.defsig 'wrPCHi', Bitstring.new(0)
    asm.defsig 'unused2', Bitstring.new('00')

    # ROM 3 (LSB to MSB)
    asm.defsig 'aluOut', Bitstring.new(0)
    asm.defsig 'pcClk', Bitstring.new(0)
    asm.defsig 'aluOp', Bitstring.new('000000')

    # ROM 4 (LSB to MSB)
    asm.defsig '-endIfEq', Bitstring.new(1)
    asm.defsig '-endIfNew', Bitstring.new(1)
    asm.defsig '-endIfNoCarry', Bitstring.new(1)
    asm.defsig 'endIfNeqCarry', Bitstring.new(0)
    asm.defsig 'endIfNeqNoCarry', Bitstring.new(0)
    asm.defsig '-endUncond', Bitstring.new(1)
    asm.defsig 'latchAddr', Bitstring.new(0)
    asm.defsig 'latchCC', Bitstring.new(0)

    # Assign indices to signals
    asm.assign_indices
end

########################################################################
# Waveform template functions
########################################################################

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

########################################################################
# Generate microcode
########################################################################

class GenUcode < Assembler
  def gen_instructions
    # Define signals
    defsignals(self)

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

########################################################################
# Main code
########################################################################

def rom_size_valid?(romsize)
  max = 512*1024 # Could support 512K flash ROMS (2K ucode words per instruction!)
  size = 1*1024 # AFAIK smallest EPROM is 2708, 1K

  while size < romsize && size <= max
    size *= 2
  end

  return size == romsize
end

# Convert string of '0' and '1' characters into a byte value
def to_byte_val(s)
  val = 0
  s.each_char do |x|
    val *= 2
    val += x.to_i
  end
  return val
end

options = {}
optparse = OptionParser.new do |opt|
  opt.banner = 'Usage: asm.rb [options]'
  opt.on('--output OUTPUT_PREFIX', 'Output file') { |o| options[:output_file] = o }
  opt.on('--romsize ROM_SIZE_IN_BYTES', 'ROM size') { |o| options[:romsize] = o.to_i }
  opt.on('--rotate NUM_BYTES', '# bytes to rotate ins seqs') { |o| options[:rotate] = o.to_i }
  opt.on('--verbose', '-v', 'enable verbose output') { options[:verbose] = true }
  opt.on('--help', 'Print this message') do
    puts opt
    exit
  end
end

optparse.parse!

input_file = ARGV.shift
begin
  raise "Output file not specified" if !options.has_key?(:output_file)
  raise "ROM size not specified" if !options.has_key?(:romsize)
  raise "Invalid ROM size (must be power of 2 from 1K to 512K)" if !rom_size_valid?(options[:romsize])
rescue Object => e
  puts e
  puts optparse.help
  exit
end

if !options.has_key?(:rotate)
  options[:rotate] = 0
end

ucode = GenUcode.new
ucode.gen_instructions

puts "Default word is #{ucode.default_word}"

# Make sure the microcode word size is a multiple of 8
default_word = ucode.default_word
wordsize = default_word.nbits
raise "Word size #{wordsize} isn't a multiple of 8" if wordsize % 8 != 0

# Just for debugging
if options[:verbose]
  puts "Default word: #{default_word}"

  ucode.assembled_instructions.each do |ins|
    puts "Instruction #{ins.opcode}"
    count = 0
    ins.words.each do |word|
      puts "#{count}: #{word}"
      count += 1
    end
  end
end

max_words = options[:romsize] / 256

(0..(wordsize/8)-1).each do |rom_index|
  bytes = []

  (0..255).each do |opcode|
    ins = ucode.get_assembled_instruction(opcode)
    if ins.words.length > max_words
      raise "Opcode #{opcode} has too many words (#{ins.words.length}, max is #{max_words}"
    end

    bit_offset = wordsize - ((rom_index+1) * 8)

    ins_bytes = []
    (0..max_words-1).each do |i|
      word = (i < ins.words.length) ? ins.words[i] : default_word
      bits = word.bits
      slice = bits[bit_offset, 8]
      byte_val = to_byte_val(slice)
      ins_bytes.push(byte_val)
    end

    # rotate if necessary
    options[:rotate].times do
      val = ins_bytes.pop
      ins_bytes.unshift(val)
    end

    bytes.concat(ins_bytes)
  end

  #puts "Generated #{bytes.length} bytes"

  raise "Wrong number of bytes?" if bytes.length != options[:romsize]

  outfile = "#{options[:output_file]}#{rom_index}.bin"
  puts "Writing output file #{outfile}..."

  File.open(outfile, "w") do |outf|
    outf.extend(BinaryFile)
    bytes.each do |byte_val|
      outf.write_byte(byte_val)
    end
  end
end

puts "Done"
