class ArgumentError < StandardError; end

class Complement
  VERSION = 3

  CYTOSINE = "C"
  GUANINE  = "G"
  THYMINE  = "T"
  ADENINE  = "A"
  URACIL   = "U"

  NUCLEOTIDE_COMPLEMENT = {
    GUANINE  => CYTOSINE,
    CYTOSINE => GUANINE,
    THYMINE  => ADENINE,
    ADENINE  => URACIL
  }

  def self.of_dna(strand)
    strand.chars.map do |nucleotide|
      nucleotide_complement(nucleotide)
    end.join
  end

  private

  def self.nucleotide_complement(nucleotide)
    raise ArgumentError unless NUCLEOTIDE_COMPLEMENT.keys.include?(nucleotide)
    NUCLEOTIDE_COMPLEMENT[nucleotide]
  end
end