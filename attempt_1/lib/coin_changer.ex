defmodule CoinChanger do

  def get_change(0) do
    0
  end

  def get_change(amount) when amount < 0 do
    "Amount must be greater than zero"
  end

  def get_change(amount) do
    Enum.member?([1,2],amount )
    amount
  end
end
