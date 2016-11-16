module BookKeeping
  VERSION = 1
end

class Prime
  class << self
    def nth(n)
      raise(ArgumentError, "Can't calculate the #{n}th prime number. #{n} must be >= 1.") unless n >= 1
      prime_numbers = [2]
      number = 3
      while prime_numbers.size < n do
        prime_numbers << number if prime?(number, prime_numbers)
        number += 2
      end
      prime_numbers.last
    end

    private

    def prime?(number, prime_numbers)
      !prime_numbers.any? {|i| number % i == 0}
    end
  end
end
