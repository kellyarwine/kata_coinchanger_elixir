Code.require_file "../test_helper.exs", __FILE__

defmodule CoinchangerTest do
  use ExUnit.Case

  test "returns [1] when 1 is input" do
    assert(Coinchanger.change(1) == [1])
  end

  test "returns [1, 1] when 2 is input" do
    assert(Coinchanger.change(2) == [1, 1])
  end

  test "returns [1, 1, 1] when 3 is input" do
    assert(Coinchanger.change(3) == [1, 1, 1])
  end

  test "returns [5] when 5 is input" do
    assert(Coinchanger.change(5) == [5])
  end

  test "returns [25, 25, 25, 10, 10, 1, 1, 1, 1] when 99 is input" do
    assert(Coinchanger.change(99) == [25, 25, 25, 10, 10, 1, 1, 1, 1])
  end

end
