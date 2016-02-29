defmodule StatsTest do
  use ExUnit.Case

  doctest Stats

  test "test 1: the function minimum/1 returns the minimum number in a list of numbers" do
    assert Stats.minimum([4, 1, 7, -17, 8, 2, 5]) == -17
  end

  test "test 2: the function minimum/1 returns the minimum number in a list of numbers" do
    assert Stats.minimum([52, 46]) == 46
  end  

  test "test 1: the function maximum/1 returns the maximum number in a list of numbers" do
    assert Stats.maximum([4, 1, 7, -17, 8, 2, 5]) == 8
  end  

  test "test 1: the function range/1 returns the maximum and minimum numbers in a list of numbers" do
    assert Stats.range([4, 1, 7, -17, 8, 2, 5]) == [-17, 8]
  end      
end