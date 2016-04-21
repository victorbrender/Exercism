class Pangram
  VERSION = 1
  LOWERCASE_ALPHABET = ('a'..'z')

  def self.is_pangram?(sentence)
    LOWERCASE_ALPHABET.all? do |letter|
      sentence.downcase.include?(letter)
    end
  end
end
