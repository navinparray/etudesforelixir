defmodule PowersTailRecursive do
  import Kernel, except: [raise: 2, raise: 3]

  @moduledoc """
  Module for raising a number to an integer power.

  Etude 4-4 Tail Recursion with an Accumulator

  """

  @doc """
  Raise a number x to a power n
  Any number to the power 0 equal 1
  Any number to the power 1 is that number itself = that stosp the recursion
  When n is positive, x^n is equal top x time x^(n - 1) - there's your recursion
  When n is negative, x^n is equal to 1.0 / x^(-n)

  Your raise/2 function will return 1 when n is equal to 0, and will return 1.0 / raise(x, -n) when n is less than zero.

  When n is greater than zero, raise/2 will call raise/3 with arguments x, n, and 1 as the accumulator.

  The raise/3 function will return the accumulator when n equals 0 (this will stop the recursion).

  Otherwise, recursively call raise/3 with x, n - 1, and x times the accumulator as its arguments.

  The raise/3 function is tail recursive.
  """

  @spec raise(number(), number()) :: number()

  def raise(_, 0) do
    1
  end

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  # Helper function: counts down from n to 0
  # Called when n is greater than zero and 1 is the accumulator
  # raise/3 returns the accumulator when n equals 0 (stops the recursion)
  # otherwise, recursively call raise/3 with x, n -1, and x times the accumulator as its argument

  @spec raise(number(), number(), number()) :: number()

  defp raise(_, 0, accumulator) do
    accumulator
  end

  defp raise(x, n, accumulator) do
    raise(x, n - 1, x * accumulator)
  end
end
