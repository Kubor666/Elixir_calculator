defmodule ElixirCalculatorTest do
  use ExUnit.Case
  doctest ElixirCalculator

  test "add numbers" do
    assert ElixirCalculator.Maths.add(2, 2) == 4
  end

  test "substract numbers" do
    assert ElixirCalculator.Maths.substract(2, 2) == 0
  end

  test "multiply numbers" do
    assert ElixirCalculator.Maths.multi(2, 2) == 4
  end

  test "divide numbers" do
    assert ElixirCalculator.Maths.divide(2, 2) == 1
  end
end
