defmodule Coinchanger do

  def change(amount) do
    build_change_array(amount, [25, 10, 5, 1], [])
  end

  def build_change_array(amount, [current_coin|remaining_coins], acc) do
    if amount >= current_coin do
        build_change_array(amount - current_coin, [current_coin|remaining_coins], acc ++ [current_coin])
    else
        build_change_array(amount, remaining_coins, acc)
    end
  end

  def build_change_array(amount, [], acc) do
    acc
  end

end
