defmodule ElixirCalculator.Maths do
  def add(x, y) do
    result = x + y
    display_result(result)
  end

  def substract(x, y) do
    result = x - y
    display_result(result)
  end

  def multi(x, y) do
    result = x * y
    display_result(result)
  end

  def divide(x, y) do
    result = x / y
    display_result(result)
  end

  defp display_result(result) do
    IO.puts("Your result is:")
    IO.puts(result)
    same_number?(result)
  end

  defp same_number?(result) do
    IO.puts("Would you like to use result number for further calculations ?")
    number = IO.gets("1.Yes
    2. No: ")

    if number == "2\n" do
      continue()
    else
      ElixirCalculator.mainmenu(result)
    end
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
