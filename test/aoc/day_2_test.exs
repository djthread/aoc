defmodule Aoc.Day2Test do
  use ExUnit.Case
  alias Aoc.Day2
  doctest Aoc

  @answer 595

  test "win" do
    assert @answer == data() |> Day2.run()
  end

#  test "win again" do
#    assert @answer == data() |> Day2.run2()
#  end

  defp data do
    [File.cwd!(), "test", "fixtures", "day-2.txt"]
    |> Path.join()
    |> File.read!()
  end
end
