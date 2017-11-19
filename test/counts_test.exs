defmodule CountsTest do
  use ExUnit.Case
  doctest Counts

  test "greets the world" do
    assert Counts.hello() == :world
  end
end
