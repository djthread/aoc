# https://adventofcode.com/2018/day/2
defmodule Aoc.Day2 do
  require Logger

  def run(str) do
    match2(str)
    # match2() * match3()
  end

  def match2(str) do
    str
    |> String.split("\n")
    |> Enum.reduce({0, 0}, fn word, {two_occurrences, three_occurrences} ->
      {x, y} = evaluate_word(word)
      {two_occurrences + x, three_occurrences + y}
    end)
  end

  defp evaluate_word(word) do

  end
end
