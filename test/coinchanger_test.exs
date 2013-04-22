Code.require_file "../test_helper.exs", __FILE__

defmodule CoinchangerTest do
  use ExUnit.Case

  test "returns [1] when 1 is input" do
    assert(Coinchanger.make_change(1, [25,10,5,1], []) == [1])
  end

  test "returns [1, 1] when 2 is input" do
    assert(Coinchanger.make_change(2, [25,10,5,1], []) == [1, 1])
  end

  test "returns [1, 1, 1] when 3 is input" do
    assert(Coinchanger.make_change(3, [25,10,5,1], []) == [1, 1, 1])
  end

  test "returns [5] when 5 is input" do
    assert(Coinchanger.make_change(5, [25,10,5,1], []) == [5])
  end

  test "returns [25, 25, 25, 10, 10, 1, 1, 1, 1] when 99 is input" do
    assert(Coinchanger.make_change(99, [25,10,5,1], []) == [25, 25, 25, 10, 10, 1, 1, 1, 1])
  end

end
