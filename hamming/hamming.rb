class ArgumentError < StandardError; end

class Hamming
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
      hamming_difference = 0

      (0..first_strand.size - 1).each do |i|
        if first_strand[i] != second_strand[i]
          hamming_difference += 1
        end
      end

      hamming_difference
    end
  end
end