defmodule AskAreaTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  import Kernel


  test "the char_to_shape function returns a rectangle shape atom given the character R or r" do
    assert AskArea.char_to_shape("R") == {:ok, :rectangle}

    assert AskArea.char_to_shape("r") == {:ok, :rectangle}
  end

  test "the char_to_shape function returns a triangle shape atom given the character T or t" do
    assert AskArea.char_to_shape("T") == {:ok, :triangle}

    assert AskArea.char_to_shape("t") == {:ok, :triangle}
  end

  test "the char_to_shape function returns an ellipse shape atom given the character E or E" do
    assert AskArea.char_to_shape("E") == {:ok, :ellipse}

    assert AskArea.char_to_shape("e") == {:ok, :ellipse}
  end

  test "the char_to_shape function should dipslay error on invalid input" do
    assert AskArea.char_to_shape("X") == {:error, "invalid shape"}
  end

  #for capture_io usage
  #see http://elixir-lang.org/docs/stable/ex_unit/ExUnit.CaptureIO.html
  test "the get_number function displays a prompt based on some given string" do

    assert capture_io("42", fn -> AskArea.get_number("width") end) == "Enter width >"
  end

  test "the get_number function returns a number inputted" do
    capture_io([input: "42"], fn ->
      send self(), {:block_result, AskArea.get_number("width")}
    end)

    assert_received {:block_result, 42}
  end

  test "the get_number function returns an error if a number is not given" do
    capture_io([input: "a"], fn ->
      send self(), {:block_result, AskArea.get_number("width")}
    end)

    assert_received {:block_result, :error}
  end

  # test "the get_dimensions function accepts two prompts and returns a tuple" do
  #   capture_io([input: "2"], fn ->
  #     send self(), {:block_result, AskArea.get_dimensions("length", "width")}
  #   end)
  #
  #   assert_received {:block_result, {2, 3}}
  # end

  test "given a valid shape and two dimensions display the area" do
    
  end
end
