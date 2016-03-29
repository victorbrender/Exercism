class Complement
  VERSION = 3

  def self.of_dna(strand)
    case strand
    when "G" then "C"
    when "C" then "G"
    when "T" then "A"
    when "A" then "U"
    end
  end
end