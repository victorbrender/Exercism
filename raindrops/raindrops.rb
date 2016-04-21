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
    translated_factors = translate_factorization(prime_factorization)

    translated_number(number, translated_factors)
  end

  private

  def self.extract_prime_factors(number)
    Prime::prime_division(number).map(&:first)
  end

  def self.translate_factorization(prime_factorization)
    prime_factorization.map do |f|
      RAINDROP_SPEAK[f]
    end.compact.join
  end

  def self.translated_number(number, translated_factors)
    translated_factors.empty? ? number.to_s : translated_factors
  end
end