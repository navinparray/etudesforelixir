defmodule AskArea do

  @spec char_to_shape(String.t()) :: atom()

  def char_to_shape(char) do
    case String.downcase(char) do
      "r" -> {:ok, :rectangle}
      "t" -> {:ok, :triangle}
      "e" -> {:ok, :ellipse}
      _ -> {:error, "invalid shape"}
    end
  end

  @spec get_number(String.t()) :: number()

  def get_number(prompt) do
    input = String.strip(IO.gets("Enter #{prompt} >"))

    # The books states to use binary_to_integer
    # but can't seem to find this function and code does not compile with it
    # Using Integer.parse instead

    case Integer.parse(input) do
      {a, ""} -> a
      _ -> :error
    end
  end

  @spec get_dimensions(String.t(), String.t()) :: {number(), number()}

  def get_dimensions(a, b) do
    { get_number(a), get_number(b)}
  end

  @spec calculate(atom(), number(), number()) :: number()

  def calculate(shape, dimension_a, dimension_b) do
    cond do
      shape == :unknown ->
        IO.puts "the shape #{shape} is not recognoized"
      dimension_a < 0 or dimension_b < 0 ->
        IO.puts "Both numbers must be greater than or equal to zero"
      true -> Geom.area34 {shape, dimension_a, dimension_b}
    end
  end

end
