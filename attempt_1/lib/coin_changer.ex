defmodule CoinChanger do

  def get_change(0) do
    0
  end

  def get_change(amount) do
    Enum.member?([1,2],amount )
    amount
  end

end
