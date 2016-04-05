require 'prime'

class Raindrops
  VERSION = 1

  RAINDROP_SPEAK = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    prime_factorization = extract_prime_factors(number)

    raindrop_speak = prime_factorization.uniq.map do |f|
      RAINDROP_SPEAK[f]
    end.compact.join

    (!raindrop_speak.empty? && raindrop_speak) || number.to_s
  end

  private

  def self.extract_prime_factors(number)
    #this must be rewriten as a recursive method
    result = []
    prime_numbers = []
    Prime.each(number) {|prime_number| prime_numbers << prime_number}

    while !Prime.prime?(number) && number > 1 do
      i = 0
      while (number % prime_numbers[i] != 0) && i < prime_numbers.size do
        i += 1
      end
      number = number / prime_numbers[i]
      result << prime_numbers[i]
    end

    result << number
  end
end