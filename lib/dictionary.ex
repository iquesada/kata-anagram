defmodule Dictionary do
  def filter(strings, words) do
    strings
    |> Stream.map(&String.downcase/1)
    |> Enum.filter(&in_dictionary(&1, words))
  end

  defp in_dictionary(string, words) do
    Enum.any?(words, &(&1 == string))
  end
end
