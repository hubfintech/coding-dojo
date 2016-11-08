require 'minitest/autorun'

class ChopperTest < Minitest::Test
  def test_should_return_negative_number_when_array_is_empty
    index = Chopper.chop(1, [])
    assert_equal(-1, index)
  end

  def test_should_return_negative_number_when_values_is_not_include_in_array
    index = Chopper.chop(1, [2, 3, 4, 5])
    assert_equal(-1, index)
  end

  def test_should_return_0
    index = Chopper.chop(1, [1])
    assert_equal(0, index)
  end

  def test_should_return_1
    index = Chopper.chop(2, [1, 2])
    assert_equal(1, index)
  end

  def test_should_return_2
    index = Chopper.chop(3, [1, 2, 3, 4])
    assert_equal(2, index)
  end

  def test_should_return_6
    index = Chopper.chop(7, [1, 2, 3, 4, 5, 6, 7, 8])
    assert_equal(6, index)
  end
end

class Chopper

  def self.chop(n, array)
    index = -1
    start = 0
    stop = array.length - 1

    while stop >= start
      midpoint = (start + stop) / 2
      if array[midpoint] == n
        index = midpoint
        break
      elsif array[midpoint] < n
        start = midpoint + 1
      else
        stop = midpoint - 1
      end
    end

    index
  end
end