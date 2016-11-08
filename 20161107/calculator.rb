require 'minitest/autorun'

class CalculatorTest < Minitest::Test
	def test_add_two_numbers
		calc = Calculator.new
		assert_equal 4, calc.add(2, 2)
		assert_equal 5, calc.add(2, 3)
	end
end

class Calculator
	def add(a, b)
		a + b
	end
end