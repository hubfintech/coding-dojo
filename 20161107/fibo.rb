require 'minitest/autorun'
require 'benchmark'

class FiboTest < Minitest::Test
  [:rcall, :icall, :tcall].each do |method|
    define_method "test_#{method}_first_fibo" do
      fibo = Fibo.new
      assert_equal 0, fibo.send(method, 0)
    end

    define_method "test_#{method}_second_fibo" do
      fibo = Fibo.new
      assert_equal 1, fibo.send(method, 1)
    end

    define_method "test_#{method}_third_fibo" do
      fibo = Fibo.new
      assert_equal 1, fibo.send(method, 2)
    end

    define_method "test_#{method}_fourth_fibo" do
      fibo = Fibo.new
      assert_equal 2, fibo.send(method, 3)
    end

    define_method "test_#{method}_fifth_fibo" do
      fibo = Fibo.new
      assert_equal 3, fibo.send(method, 4)
    end

    define_method "test_#{method}_tenth_fibo" do
      fibo = Fibo.new
      assert_equal 34, fibo.send(method, 9)
    end

    define_method "test_#{method}_twentieth_fibo" do
      fibo = Fibo.new
      assert_equal 4181, fibo.send(method, 19)
    end

    define_method "test_#{method}_fourtieth_fibo" do
      fibo = Fibo.new
      assert_equal 63245986, fibo.send(method, 39)
    end
  end
end

class Fibo
  # Recursive
  def rcall(n)
    return n if n <= 1
    rcall(n - 1) + rcall(n - 2)
  end

  # Iterative
  def icall(n)
    return n if n <= 1

    n1, n2 = [0, 1]

    2.upto(n) do
      aux_n = n2
      n2 += n1
      n1 = aux_n
    end

    n2
  end

  ## Tail call
  def tcall(n, n1 = 0, n2 = 1)
    return n1 if n == 0
    tcall(n - 1, n2, n1 + n2)
  end
end
