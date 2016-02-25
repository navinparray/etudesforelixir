defmodule PowersTailRecursiveTest do
  use ExUnit.Case

  doctest PowersTailRecursive

  test "power of a number raised to 0 is 1" do
    assert PowersTailRecursive.raise(2,0) == 1
  end

  test "a number to the power of one is the same number" do
    assert PowersTailRecursive.raise(5, 1) == 5
  end

  test "return the result of a number raised to the power of a positive number: test 1" do
    assert PowersTailRecursive.raise(2, 3) == 8
  end

  test "return the result of a number raised to the power of a positive number: test 2" do
    assert PowersTailRecursive.raise(1.2, 3) == 1.728
  end

  test "return result of a number raised to the power of a negative number" do
    assert PowersTailRecursive.raise(2, -3) == 0.125
  end
end
