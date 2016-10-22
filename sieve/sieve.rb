require 'byebug'

class Sieve
  def initialize(target)
    @target = target
    @primes = (2..@target).to_a
  end

  def primes
    (2..@target).each do |base|
      remove_multiples(base)
    end
    @primes
  end

  def remove_multiples(base)
    (base*2..@target).step(base) do |i|
      @primes -= [i]
    end
  end
end