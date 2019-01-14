# https://adventofcode.com/2018/day/2
defmodule Aoc.Day2 do
  @moduledoc false
  require Logger

  def run(str) do
    match2(str)
    # match2() * match3()
  end

  def match2(str) do
    {a, b} =
      str
      |> String.split("\n")
      |> Enum.reduce({0, 0}, fn word, {two_occurrences, three_occurrences} ->
        {x, y} =
          word
          # %{"a" => 2, ...}
          |> count_occurrences()
          |> finalize_counts()

        {two_occurrences + x, three_occurrences + y}
      end)

    a * b
  end

  @spec count_occurrences(String.t()) :: %{String.t() => integer}
  defp count_occurrences(word) do
    Enum.reduce(String.split(word, "", trim: true), %{}, fn letter, acc ->
      val = Map.get(acc, letter, 0)
      Map.put(acc, letter, val + 1)
    end)
  end

  defp finalize_counts(occurrences_map) do
    # showing with capture function syntax and without:
    two_occurrences =
      resolve(Enum.find(Map.values(occurrences_map), fn x -> x == 2 end))

    three_occurrences =
      resolve(Enum.find(Map.values(occurrences_map), &(&1 == 3)))

    {two_occurrences, three_occurrences}
  end

  defp resolve(nil), do: 0
  defp resolve(_), do: 1
end
