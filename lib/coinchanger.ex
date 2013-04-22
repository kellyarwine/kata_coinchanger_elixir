defmodule Coinchanger do

  def make_change(amount, [h|t], acc) do
    cond do
      amount >= h ->
        make_change(amount - h, [h|t], acc ++ [h])
      true ->
        make_change(amount, t, acc)
    end
  end

  def make_change(amount, [], acc) do
    acc
  end

end
