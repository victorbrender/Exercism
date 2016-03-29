class Complement
  VERSION = 3

  CYTOSINE = "C"
  GUANINE  = "G"
  THYMINE  = "T"
  ADENINE  = "A"
  URACIL   = "U"

  DNA_COMPLEMET = {
    GUANINE  => CYTOSINE,
    CYTOSINE => GUANINE,
    THYMINE  => ADENINE,
    ADENINE  => URACIL
  }

  def self.of_dna(strand)
    DNA_COMPLEMET[strand]
  end
end