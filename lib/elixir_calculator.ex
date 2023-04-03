defmodule ElixirCalculator do
  def mainmenu do
    IO.puts("What you would like to do ?")
    choice = IO.gets(" 1. Add
  2. Substract
  3. Multiplication
  4. Division: ")
    choose_math(choice)
  end

  def choose_math(choice) do
    x =
      IO.gets("Provide 1st number: ")
      |> String.trim()
      |> String.to_integer()

    y =
      IO.gets("Provide 2nd number: ")
      |> String.trim()
      |> String.to_integer()

    case choice do
      "1\n" -> ElixirCalculator.Maths.add(x, y)
      "2\n" -> ElixirCalculator.Maths.substract(x, y)
      "3\n" -> ElixirCalculator.Maths.multi(x, y)
      "4\n" -> ElixirCalculator.Maths.divide(x, y)
    end
  end
end
