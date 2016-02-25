defmodule Geom do
  @moduledoc """
  Solution for Etudes for Elixir Chapter 2
  """

  @doc """
  calculate area given a length and b and if none are given use default values of 1 for each
  """
  def area(length \\ 1, width \\ 1) do
    length * width
  end

  def sum(a \\3, b, c \\ 7, d) do
    a + b + c + d
  end

  def area31(:rectangle, length, width) do
    length * width
  end

  def area31(:triangle, a, b) do
    (a * b) / 2
  end

  def area31(:ellipse, a, b) do
    :math.pi() * a * b
  end

  # defmacro is_positive(value) do
  #   quote do
  #     unquote(value) >= 0
  #   end
  # end

  def area32(:rectangle, a, b) when a >= 0 and b >= 0 do
    a * b
  end

  def area32(:triangle, a, b) when a >= 0 and b >= 0 do
    (a * b) / 2
  end

  def area32(:ellipse, a, b) when a >= 0 and b >= 0 do
    :math.pi() * a * b
  end

  @spec area33(atom(), number(), number()) :: number()

  def area33(:rectangle, a, b) when a >= 0 and b >= 0 do
    a * b
  end

  def area33(:triangle, a, b) when a >= 0 and b >= 0 do
    (a * b) / 2
  end

  def area33(:ellipse, a, b) when a >= 0 and b >= 0 do
    :math.pi() * a * b
  end

  def area33(_, _, _) do
    0
  end

  @spec area34({atom(), number(), number()}) :: number()

  def area34({:rectangle, a, b}) when a >= 0 and b >= 0 do
    a * b
  end

  def area34({:triangle, a, b}) when a >= 0 and b >= 0 do
    (a * b) / 2
  end

  def area34({:ellipse, a, b}) when a >= 0 and b >= 0 do
    :math.pi * (a * b)
  end

  def area34({_, _, _}) do
    0
  end
end
