defmodule Aoc.Day1Test do
  use ExUnit.Case
  alias Aoc.Day1
  doctest Aoc

  @answer 595

  test "win" do
    assert @answer == data() |> Day1.run()
  end

  test "win again" do
    assert @answer == data() |> Day1.run2()
  end

  defp data do
    [File.cwd!(), "test", "fixtures", "day-1.txt"]
    |> Path.join()
    |> File.read!()
  end
end
