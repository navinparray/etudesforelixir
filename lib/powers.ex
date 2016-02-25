defmodule Powers do

  import Kernel, except: [raise: 2]

  @moduledoc """
  Module for raising a number to an integer power.

  Etude 4-3 Non-tail Recursive Functions

  This version is not tail recursive
  """

  @doc """
  Raise a number x to a power n
  Any number to the power 0 equal 1
  Any number to the power 1 is that number itself = that stosp the recursion
  When n is positive, x^n is equal top x time x^(n - 1) - there's your recursion
  When n is negative, x^n is equal to 1.0 / x^(-n)
  """

  @spec raise(number(), number()) :: number()

  def raise(_, n) when n == 0 do
    1
  end

  def raise(x, n) when n == 1 do
    x
  end

  def raise(x, n) when n > 1 do
    x * raise(x, n - 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  @doc """

  nth_root finds the nth root of a number, where n is an integer.

  For example, nth_root(36, 2) will calculate the square root of 36

  The algorithm used here is the Newton-Raphson method for calculating roots.
  (See http://en.wikipedia.org/wiki/Newton%27s_method for details).
  """

  @spec nth_root(number(), number()) :: number()

  # Using x / 2.0 as first approximation
  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end

  # Helper function: counts down from n to 0
  #
  # Calculate f as (a^n - x)
  #
  # Calculate f_prime as n * a^(n - 1)
  #
  # Calculate your next approximation (call it next) as a - f / f_prime
  #
  # Calculate the change in value (call it change) as the absolute value of next - a
  #
  # If the change is less than some limit (say, 1.0e-8),
  # stop the recursion and return next;
  # that’s as close to the root as you are going to get.
  #
  # Otherwise, call the nth_root/3 function again with x, n,
  # and next as its arguments.

  @spec nth_root(number(), number(), number()) :: number()

  defp nth_root(x, n, a) do
    IO.puts "Current guess is #{a}"
    
    f = raise(a, n) - x
    f_prime = n * raise(a, (n - 1))

    # calculate next approximation
    next = a - f / f_prime
    # calculate the change in value
    change = abs(next - a)

    cond do
      change < 1.0e-8 -> next
      true -> nth_root(x, n, next)
    end
  end

end
