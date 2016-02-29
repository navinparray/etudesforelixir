defmodule Stats do
  @moduledoc """
    Solutions to problems from Chapter 6-1 of "Etudes for Elixir"
  """

  @doc """
    take a list of numbers and return the smallest value using recursion

    In minimum/1:
    Split off first number from the list. 
    Call minimum/2 with the first number and the rest of the list.
    The first number is considered the current candidate for the smallest number.

    In minimum/2:
    If the list is empty, the final result will be the current candidate.
    This the the end recursion check.
    If the list is not empty then:
      Split the list into a head and tail.
      Check the head against the current candidate
      if the head is smaller than the current candidate:
        call minimum/2 with the tail and the head
      else
        call minimum/2 with the tail and the current candidate

  """  

  @spec minimum([number]) :: number

  def minimum(list) do
    [head | tail] = list
    minimum(head, tail)
  end

  @doc """
    when the list of numbers is empty return the last value
  """

  @spec minimum(number, [number]) :: number

  def minimum(current_candidate, []) do
    current_candidate
  end

  def minimum(current_candidate, list) do
    [head | tail] = list

    if (head < current_candidate) do
      minimum(head, tail)
    else
      minimum(current_candidate, tail)
    end
  end

  @doc """
    take a list of numbers and return the largest value using recursion

    In maximum/1:
    Split off first number from the list. 
    Call maximum/2 with the first number and the rest of the list.
    The first number is considered the current candidate for the largest number.

    In maximum/2:
    If the list is empty, the final result will be the current candidate.
    This the the end recursion check.
    If the list is not empty then:
      Split the list into a head and tail.
      Check the head against the current candidate
      if the head is larger than the current candidate:
        call maximum/2 with the tail and the head
      else
        call maximum/2 with the tail and the current candidate  
  """

  @spec maximum([number]) :: number

  def maximum(list) do
    [head | tail] = list
    maximum(head, tail)
  end

  @doc """
    when the list of numbers is empty return the last value
  """

  @spec maximum(number, [number]) :: number

  def maximum(current_candidate, []) do
    current_candidate
  end

  def maximum(current_candidate, list) do
    [head | tail] = list

    if (head > current_candidate) do
      maximum(head, tail)
    else
      maximum(current_candidate, tail)
    end
  end

  @doc """
    the function range/1 takes a list of numbers and returns a list containing the maximum and min9imum values of the list
  """
  # @spec range([number]) :: [number]

  def range(list) do
    [minimum(list), maximum(list)]
  end
end