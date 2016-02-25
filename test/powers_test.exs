defmodule PowersTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  doctest Powers

  test "the power of a number to 0 is 1" do
    assert Powers.raise(2, 0) == 1
  end

  test "a number to the power of one is the same number" do
    assert Powers.raise(5, 1) == 5
  end

  test "return the result of a number raised to the power of a positive number: test 1" do
    assert Powers.raise(2, 3) == 8
  end

  test "return the result of a number raised to the power of a positive number: test 2" do
    assert Powers.raise(1.2, 3) == 1.728
  end

  test "return result of a number raised to the power of a negative number" do
    assert Powers.raise(2, -3) == 0.125
  end

  #
  #  Tests for Étude 4-5: Recursion with a Helper Function
  #
  test "display the nth root of a number" do
    assert Powers.nth_root(27, 3) == 3.0
  end

  test "display the nth root of a number and shows estimates" do
    output_string = "Current guess is 13.5\nCurrent guess is 9.049382716049383\nCurrent guess is 6.142823558176272\nCurrent guess is 4.333725614685509\nCurrent guess is 3.3683535855517652\nCurrent guess is 3.038813723595138\nCurrent guess is 3.0004936436555805\nCurrent guess is 3.000000081210202\nCurrent guess is 3.000000000000002\n"

    assert capture_io(fn -> Powers.nth_root(27, 3) end) == output_string
  end
end
