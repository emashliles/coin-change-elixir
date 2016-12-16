defmodule Attempt1Test do
  use ExUnit.Case
  doctest CoinChanger

  test "returns 0 when the amount given is 0" do
    assert CoinChanger.get_change(0) == 0
  end

  test "returns 1 when the amount given is 1" do
    assert CoinChanger.get_change(1) == 1
  end

  test "returns 2 when the amount given is 2" do
    assert CoinChanger.get_change(2) == 2
  end
end
