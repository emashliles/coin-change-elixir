defmodule Attempt1Test do
  use ExUnit.Case
  doctest CoinChanger

  test "returns 0 when the amount given is 0" do
    assert CoinChanger.get_change(0) == 0
  end

  test "returns 1 when the amount given is 1" do
    assert CoinChanger.get_change(1) == [1]
  end

  test "returns 2 when the amount given is 2" do
    assert CoinChanger.get_change(2) == [2]
  end

  #test "returns 2 and 5 when the amount given is 7" do
  #  assert CoinChanger.get_change(7) == [2,5]
  #end

  test "returns 1 and 2 when the amount given is 3" do
    assert CoinChanger.get_change(3) == [2,1]
  end

  test "returns error if number is less than 0" do
    assert CoinChanger.get_change(-1) == "Amount must be greater than zero"
  end
end
