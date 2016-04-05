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
    Prime::prime_division(number).map(&:first)
  end
end