class Sieve
  def initialize(target)
    @target = target
  end

  def primes
    range_of_numbers - multiples_to_remove(range_of_numbers)
  end

  private

  def range_of_numbers
    @range_of_numbers ||= (2..@target).to_a
  end

  def multiples_to_remove(range_of_numbers)
    range_of_numbers.inject([]) do |result, base|
      result + multiples(base)
    end
  end

  def multiples(base)
    (base*2..@target).step(base).collect {|i| i}
  end
end
