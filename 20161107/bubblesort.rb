require 'minitest/autorun'

class BubbleSorterTest < Minitest::Test
	def test_ordered_array_with_two_elements
		bubble = BubbleSorter.new
		assert_equal [1, 2], bubble.sort([1, 2])
	end

	def test_unordered_array_with_two_elements
		bubble = BubbleSorter.new
		assert_equal [1, 2], bubble.sort([2, 1])
	end

	def test_unordered_array_with_eight_elements
		bubble = BubbleSorter.new
		assert_equal [1, 2, 3, 4, 5, 6, 7, 8], bubble.sort([6, 5, 3, 1, 8, 7, 2, 4])
	end

	def test_worst_case
		bubble = BubbleSorter.new
		assert_equal [1, 2, 3, 4, 5, 6, 7, 8], bubble.sort([8, 7, 6, 5, 4, 3, 2, 1])
	end
end

class BubbleSorter
	def sort(array)
		for i in 0..array.length - 1
			for j in 0..array.length - 2
				if array[j] > array[j + 1]
					tmp_v = array[j]
					array[j] = array[j + 1]
					array[j + 1] = tmp_v
				end
			end
		end

		array
	end
end