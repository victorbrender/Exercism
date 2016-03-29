class ArgumentError < StandardError; end

class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError if first_strand.size != second_strand.size

    hamming_difference = 0

    (0..first_strand.size - 1).each do |i|
      if first_strand[i] != second_strand[i]
        hamming_difference += 1
      end
    end

    hamming_difference
  end
end