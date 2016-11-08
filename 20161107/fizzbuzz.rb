require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
  def test_sencond
    fizz_buzz = FizzBuzz.new
    assert_equal [1, 2], fizz_buzz.call(2)
  end

  def test_third
    fizz_buzz = FizzBuzz.new
    assert_equal [1, 2, 'Fizz'], fizz_buzz.call(3)
  end

  def test_fifth
    fizz_buzz = FizzBuzz.new
    assert_equal [1, 2 ,'Fizz', 4, 'Buzz'], fizz_buzz.call(5)
  end

  def test_tenth
    fizz_buzz = FizzBuzz.new
    assert_equal [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz'], fizz_buzz.call(10)
  end

  def test_fifteenth
    fizz_buzz = FizzBuzz.new
    assert_equal [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'], fizz_buzz.call(15)
  end
end

class FizzBuzz
  def call(n)
    arr = []

    1.upto(n) do |i|
      fizz = i % 3 == 0
      buzz = i % 5 == 0

      if fizz && buzz
        arr << 'FizzBuzz'
      elsif fizz
        arr << 'Fizz'
      elsif buzz
        arr << 'Buzz'
      else
        arr << i
      end
    end

    arr
  end 
end