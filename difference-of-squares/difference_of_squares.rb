class Squares
  VERSION = 2

  def initialize(n)
    @numbers = 0..n
  end

  def square_of_sum
    @numbers.reduce(:+)**2
  end

  def sum_of_squares
    @numbers.inject {|sum, i| sum + i**2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end