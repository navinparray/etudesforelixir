defmodule DijkstraTest do
  use ExUnit.Case

  doctest Dijkstra

  test "the GCD of two equal numbers is zero" do
    assert Dijkstra.gcd(2, 2) == 2
  end

  test "return the GCD of two numbers when M > N: test 1" do
    assert Dijkstra.gcd(125, 46) == 1
  end

  test "return the GCD of two numbers when M > N: test 2" do
    assert Dijkstra.gcd(120, 36) == 12
  end

  test "return the GCD of two numbers when M < N: test 1" do
    assert Dijkstra.gcd(2, 8) == 2
  end

  test "return the GCD of two numbers when M < N: test 2" do
    assert Dijkstra.gcd(14, 21) == 7
  end
end
