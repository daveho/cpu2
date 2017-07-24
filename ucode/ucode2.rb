#! /usr/bin/ruby

# Experiment to generate microcode from a Ruby program,
# where the waveform templates and instructions are specified
# using Ruby code.

# Utility classes

class Deassert
  def valtype
    return :deassert
  end
end

class Assert
  def valtype
    return :assert
  end
end

class Bitstring
  attr_reader :bits

  def initialize(s)
    @bits = s
  end

  def valtype
    return :bitstring
  end

  def self.from_i(intval)
    raise "Not a 0 or 1" if intval != 0 && intval != 1
    return Bitstring.new(intval.to_s)
  end
end

class Waveform
  def play(sigName, *values)
  end
end

# Global assert/deassert values

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

# Assembler class

class Assembler
  def add_ins
    wf = Waveform.new
    yield wf
    # TODO: assemble the actual microcode words
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
  wf.play 'endUncond', x
end

def mov(wf, dest_reg, src_reg)
  r = reg_to_pair(src_reg)
  w = reg_to_pair(dest_reg)
  u = src_reg_to_alu_op(src_reg)
  dest_bank = dest_reg_to_bank(dest_reg)

  wf.play 'rdGPAddr',  r, r, r, _
  wf.play 'rdGP',      x, x, x, _
  wf.play 'wrGPAddr',  w, w, w, _
  wf.play dest_bank,   _, x, _, _
  wf.play 'aluOp',     u, u, u, _
  wf.play 'aluOut',    x, x, x, _
  wf.play 'endUncond', _, _, _, x
end

# Generate microcode

class GenUcode < Assembler
  def gen_instructions
    # Nop instruction
    self.add_ins { |wf| nop(wf) }

    # GP register move to r0 through r7
    (0..7).each { |dest_reg| self._add_gp_mov(dest_reg) }
  end

  # Add GP reg/reg mov instructions to given destination register.
  # All source registers are generated except the destination register.
  # I.e., there is no "mov r0, r0" instruction.
  def _add_gp_mov(dest_reg)
    (0..7).each do |src_reg|
      if src_reg != dest_reg
        self.add_ins { |wf| mov(wf, "r#{dest_reg}", "r#{src_reg}") }
      end
    end
  end

end

asm = GenUcode.new
asm.gen_instructions


# vim:set expandtab:
# vim:set tabstop=2:
