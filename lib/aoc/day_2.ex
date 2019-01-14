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
    |> Enum.filter(fn word -> (
      # match letter 'm'
      Regex.run('-r/m/', word)
      # matches 'm' twice
      # Regex.run('-r/m{2}}/', word)
      # todo: check all characters [a..z]
      # Regex.run('-r/[a..z]{2}}/', word)
    )
    |> Enum.sum()
    end)
  end

end
