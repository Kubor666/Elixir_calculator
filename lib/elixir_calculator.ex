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
    x = ask_for_number()
    y = ask_for_number()
    which_action(choice, x, y)
  end

  def choose_math(choice, x) do
    y = ask_for_number()
    which_action(choice, x, y)
  end

  defp which_action("1\n", x, y) do
    ElixirCalculator.Maths.add(x, y)
  end

  defp which_action("2\n", x, y) do
    ElixirCalculator.Maths.substract(x, y)
  end

  defp which_action("3\n", x, y) do
    ElixirCalculator.Maths.multi(x, y)
  end

  defp which_action("4\n", x, y) do
    ElixirCalculator.Maths.divide(x, y)
  end

  defp which_action("5\n", x, y) do
    System.stop(0)
  end

  defp which_action(_choice, x, y) do
    IO.puts("Please provide valid option!")
    ElixirCalculator.mainmenu()
  end

  defp ask_for_number() do
    z =
      IO.gets("Provide a number ")
      |> Float.parse()

    if z == :error do
      IO.puts("Wrong value type!")
      ask_for_number()
    else
      elem(z, 0)
    end
  end
end
