defmodule Aoc.Day1 do
  require Logger

  def run(str) do
    str
    |> String.split("\n")
    |> Enum.reduce(0, fn input, acc ->
      case Integer.parse(input) do
        {int, ""} ->
          acc + int

        bad ->
          Logger.error "Bad input: #{inspect bad}"
        end
    end)
  end

  def run2(str) do
    str
    |> String.split("\n")
    |> Enum.map(fn input ->
      case Integer.parse(input) do
        {int, ""} ->
          int

        bad ->
          Logger.error "Bad input: #{inspect bad}"
          0
        end
    end)
    |> Enum.sum()
  end
end
