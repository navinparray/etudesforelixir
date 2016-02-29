defmodule DatesTest do
  use ExUnit.Case

  doctest Dates

  test "Test 1: julian returns the Julian date given a date" do
    assert Dates.julian("2013-12-31") == 365
  end

  test "Test 2: julian returns the Julian date given a date" do
    assert Dates.julian("2012-12-31") == 366
  end

  test "Test 3: julian returns the Julian date given a date" do
    assert Dates.julian("2012-02-05") == 36
  end

  test "Test 4: julian returns the Julian date given a date" do
    assert Dates.julian("2013-02-05") == 36
  end

  test "Test 5: julian returns the Julian date given a date" do
    assert Dates.julian("1900-03-01") == 60
  end

  test "Test 6: julian returns the Julian date given a date" do
    assert Dates.julian("2000-03-01") == 61
  end

  test "Test 7: julian returns the Julian date given a date" do
    assert Dates.julian("2013-01-01") == 1
  end


end