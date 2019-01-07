defmodule Aoc.Day1Test do
  use ExUnit.Case
  alias Aoc.Day1
  doctest Aoc

  test "win" do
    answer =
      [File.cwd!(), "test", "fixtures", "day-1.txt"]
      |> Path.join()
      |> File.read!()
      |> Day1.run()

    assert 595 == answer
  end

  test "win again" do
    answer =
      [File.cwd!(), "test", "fixtures", "day-1.txt"]
      |> Path.join()
      |> File.read!()
      |> Day1.run2()

    assert 595 == answer
  end
end
