module BookKeeping
  VERSION = 4
end

class Complement

  CYTOSINE = "C"
  GUANINE  = "G"
  THYMINE  = "T"
  ADENINE  = "A"
  URACIL   = "U"

  DNA_COMPLEMENT = {
    GUANINE  => CYTOSINE,
    CYTOSINE => GUANINE,
    THYMINE  => ADENINE,
    ADENINE  => URACIL
  }

  class << self
    def of_dna(strand)
      strand.each_char.inject("") do |result, nucleotide|
        result << (DNA_COMPLEMENT[nucleotide] || (return ""))
      end
    end
  end
end
