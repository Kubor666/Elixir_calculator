defmodule ElixirCalculator.Logic do
  def which_action("1\n", x, y) do
    ElixirCalculator.Maths.add(x, y)
  end

  def which_action("2\n", x, y) do
    ElixirCalculator.Maths.substract(x, y)
  end

  def which_action("3\n", x, y) do
    ElixirCalculator.Maths.multi(x, y)
  end

  def which_action("4\n", x, y) do
    ElixirCalculator.Maths.divide(x, y)
  end

  def which_action("5\n", x, y) do
    System.stop(0)
  end

  def which_action(_choice, x, y) do
    IO.puts("Please provide valid option!")
    ElixirCalculator.mainmenu()
  end

  def ask_for_number() do
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

  def display_result(result) do
    IO.puts("Your result is:")
    IO.puts(result)
    same_number?(result)
  end

  defp same_number?(result) do
    IO.puts("Would you like to use result number for further calculations ?")
    number = IO.gets("1.Yes
    2. No: ")

    selected_number(number, result)
  end

  defp selected_number("1\n", result) do
    ElixirCalculator.mainmenu(result)
  end

  defp selected_number("2\n", result) do
    continue()
  end

  defp selected_number(_number, result) do
    IO.puts("Please provide valid option!")
    same_number?(result)
  end

  defp continue() do
    IO.puts("Would you like to do some more maths?")
    choice = IO.gets("1. Yes
  2. No:
  ")
    choosen_option(choice)
  end

  defp choosen_option("1\n") do
    ElixirCalculator.mainmenu()
  end

  defp choosen_option("2\n") do
    System.stop(0)
  end

  defp choosen_option(_result) do
    IO.puts("Please provide valid option!")
    continue()
  end
end
