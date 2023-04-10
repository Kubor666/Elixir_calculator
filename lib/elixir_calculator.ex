defmodule ElixirCalculator do
  def mainmenu do
    IO.puts("Select number of desired action")
    choice = IO.gets(" 1. Add
  2. Substract
  3. Multiplication
  4. Division
  5. Exit: ")
    choose_math(choice)
  end

  def mainmenu(x) do
    IO.puts("Select number of desired action")
    choice = IO.gets(" 1. Add
  2. Substract
  3. Multiplication
  4. Division
  5. Exit: ")
    choose_math(choice, x)
  end

  def choose_math(choice) do
    x = ElixirCalculator.Logic.ask_for_number()
    y = ElixirCalculator.Logic.ask_for_number()
    ElixirCalculator.Logic.which_action(choice, x, y)
  end

  def choose_math(choice, x) do
    y = ElixirCalculator.Logic.ask_for_number()
    ElixirCalculator.Logic.which_action(choice, x, y)
  end
end
