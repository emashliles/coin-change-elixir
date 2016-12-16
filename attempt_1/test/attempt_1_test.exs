defmodule Attempt1Test do
  use ExUnit.Case
  doctest CoinChanger

  test "returns 0 when the amount of change is 0" do
    assert CoinChanger.get_change(0) == 0
  end
end
