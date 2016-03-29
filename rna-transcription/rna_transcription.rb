class Complement
  VERSION = 3

  CYTOSINE = "C"
  GUANINE  = "G"
  THYMINE  = "T"
  ADENINE  = "A"
  URACIL   = "U"

  def self.of_dna(strand)
    case strand
    when GUANINE then CYTOSINE
    when CYTOSINE then GUANINE
    when THYMINE then ADENINE
    when ADENINE then URACIL
    end
  end
end