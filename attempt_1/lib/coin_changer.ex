defmodule CoinChanger do

  def get_change(0) do
    0
  end

  def get_change(amount) when amount <= 0 do
   "Amount must be greater than zero"
  end

  def get_change(amount) do
    coins = [2,1]
    find_coins(amount,[],coins)
    end

    def find_coins(amount,change,[]) do
      change
    end
    
    def find_coins(0, change, _) do
      change
    end
   
   def find_coins(1, [], _) do
     [1]
   end

  def find_coins(amount,change,coins) do

     [head | tail] = coins
     rem = amount - head

     if rem - head <0 do 
       changen = change ++ [head]
       find_coins(rem, changen, tail)
     else
       changenew = change ++ [head]
       find_coins(rem, changenew, coins)
     end
  end

end
