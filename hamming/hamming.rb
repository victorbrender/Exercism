class Hamming
  VERSION = 1

  class << self
    def compute(first_strand, second_strand)
      check_inputs_have_same_length(first_strand, second_strand)
      calculate_hamming_difference(first_strand, second_strand)
    end

    private

    def check_inputs_have_same_length(first_strand, second_strand)
      raise ArgumentError if first_strand.size != second_strand.size
    end

    def calculate_hamming_difference(first_strand, second_strand)
      first_strand.chars.zip(second_strand.chars).count {|a,b| a != b}
    end
  end
end