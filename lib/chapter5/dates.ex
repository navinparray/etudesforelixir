defmodule Dates do

  @spec date_parts(String.t()) :: [String.t()]
  
  def date_parts(date_string) do
    String.split(date_string, "-")
  end

  @doc """

    This function takes a string representation of a date in ISO date format ("yyyy-mm-dd") and returns the Julian date: the day of the year

    Using the date_parts/1 function from above we can extract the month and day parts.
    We need to be able to convert the month into a days value. 

    For a none leap year:
    [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    for leap years
    [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    For a given month total all the values up to an including that month.
    Add this value to the days value and return as the final result



  """

  @spec julian(String.t()) :: number

  def julian(date_string) do
    [year, month, day] = date_parts(date_string)

    {year_as_int, _} = Integer.parse(year)
    {month_as_int, _} = Integer.parse(month)
    {day_as_int, _} = Integer.parse(day)

    days_in_months = get_month_totals(year_as_int)

    month_total = month_totals(days_in_months, month_as_int)

    month_total + day_as_int
  end

  defp get_month_totals(year) do
    
    if (is_leap_year(year)) do
      [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    else
      [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    end    
  end

  defp is_leap_year(year) do
    (rem(year,4) == 0 and rem(year,100) != 0) or (rem(year, 400) == 0)    
  end

  defp month_totals_add(_, 0, acc) do
    acc
  end

  defp month_totals_add([head | tail], month, acc) do
    month_totals_add(tail, month - 1, acc + head)
  end


  defp month_totals(list, month) do
    month_totals_add(list, month-1, 0)
  end
end