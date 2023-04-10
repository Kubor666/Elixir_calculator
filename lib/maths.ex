defmodule ElixirCalculator.Maths do
  def add(x, y) do
    result = x + y
    ElixirCalculator.Logic.display_result(result)
  end

  def substract(x, y) do
    result = x - y
    ElixirCalculator.Logic.display_result(result)
  end

  def multi(x, y) do
    result = x * y
    ElixirCalculator.Logic.display_result(result)
  end

  def divide(x, y) do
    result = x / y
    ElixirCalculator.Logic.display_result(result)
  end
end
