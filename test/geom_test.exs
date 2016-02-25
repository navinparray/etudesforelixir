defmodule GeomTest do
  use ExUnit.Case

  doctest Geom

  test "calculates area given valid values" do
    assert Geom.area(4,2) == 8
  end

  test "calculates area using defaults if no values given" do
    assert Geom.area() == 1
  end

  test "calculate the area of a shape called :rectangle " do
    assert Geom.area31(:rectangle, 3, 4) == 12
  end

  test "calculate the area of a shape called :triangle " do
    assert Geom.area31(:triangle, 3, 5) == 7.5
  end

  test "calculate the area of a shape called :ellipse " do
    assert Geom.area31(:ellipse, 2, 4) == 25.132741228718345
  end

  test "calculate the area of a shape called :rectangle but only for positive a" do
    assert_raise FunctionClauseError, "no function clause matching in Geom.area32/3", fn ->
      Geom.area32(:rectangle, -3, 4)
    end
  end

  test "calculate the area of a shape called :rectangle but only for positive b" do
    assert_raise FunctionClauseError, "no function clause matching in Geom.area32/3", fn ->
      Geom.area32(:rectangle, 3, -4)
    end
  end

  test "calculate the area of a shape called :triangle but only for positive a" do
    assert_raise FunctionClauseError, "no function clause matching in Geom.area32/3", fn ->
      Geom.area32(:triangle, -3, 4)
    end
  end

  test "calculate the area of a shape called :triangle but only for positive b" do
    assert_raise FunctionClauseError, "no function clause matching in Geom.area32/3", fn ->
      Geom.area32(:triangle, 3, -4)
    end
  end

  test "calculate the area of a shape called :ellipse but only for positive a" do
    assert_raise FunctionClauseError, "no function clause matching in Geom.area32/3", fn ->
      Geom.area32(:ellipse, -3, 4)
    end
  end

  test "calculate the area of a shape called :ellipse but only for positive b" do
    assert_raise FunctionClauseError, "no function clause matching in Geom.area32/3", fn ->
      Geom.area32(:ellipse, 3, -4)
    end
  end

  test "return an area of zero for unknown shapes" do
    assert Geom.area33(:pentagon, 3, -4) == 0
  end

  test "calculate area of a rectangle when data is given as a tuple" do
    assert Geom.area34({:rectangle, 7, 3}) == 21
  end

  test "calculate area of a triangle when data is given as a tuple" do
    assert Geom.area34({:triangle, 7, 3}) == 10.5
  end

  test "calculate area of an ellipse when data is given as a tuple" do
    assert Geom.area34({:ellipse, 7, 3}) == 65.97344572538566
  end

  test "returns area of zero for an unknown shape when data is given as a tuple" do
    assert Geom.area34({:pentagon, 7, 3}) == 0
  end
end
