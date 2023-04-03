defmodule ElixirCalculator do
  def mainmenu do
    IO.puts("Select number of desired action")
    choice = IO.gets(" 1. Add
  2. Substract
  3. Multiplication
  4. Division: ")
    choose_math(choice)
  end

  def choose_math(choice) do
    x = ask_for_number()
    y = ask_for_number()
    which_action(choice, x, y)
  end

  defp which_action(choice, x, y) do
    case choice do
      "1\n" -> ElixirCalculator.Maths.add(x, y)
      "2\n" -> ElixirCalculator.Maths.substract(x, y)
      "3\n" -> ElixirCalculator.Maths.multi(x, y)
      "4\n" -> ElixirCalculator.Maths.divide(x, y)
      _ -> IO.puts("Please provide valid number of an option")
    end
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
