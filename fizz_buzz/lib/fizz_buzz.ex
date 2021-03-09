defmodule FizzBuzz do

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  #def handle_file_read({:ok, result}) do
  #  list = String.split(result, ",")
  #  Enum.map(list, &String.to_integer/1)
  #end
  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_number/1)
  end
  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate_number(elem) do
    number = String.to_integer(elem)

    if rem(number, 3) == 0 do
      :fizz
    else if (rem(number, 5) == 0) do
         :buzz
         end
    end
  end

end
