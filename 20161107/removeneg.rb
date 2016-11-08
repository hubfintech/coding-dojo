require 'minitest/autorun'

class ArrayUtilsTest < Minitest::Test
  def test_only_positives
    array_utils = ArrayUtils.new
    assert_equal [1, 2], array_utils.remove_neg([1, 2])
  end

  def test_1_negative
    array_utils = ArrayUtils.new
    assert_equal [1, 3], array_utils.remove_neg([1, -4, 3])
  end

  def test_multiple_negatives
    array_utils = ArrayUtils.new
    assert_equal [1, 3], array_utils.remove_neg([1, -4, 3, -10])
  end
end

class ArrayUtils
  def remove_neg(array)
    # new_array = []

    # array.each do |v|
    #   new_array << v if v >= 0
    # end

    # new_array

    array.select { |v| v >= 0 }
  end
end