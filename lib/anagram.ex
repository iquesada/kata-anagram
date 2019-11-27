defmodule Anagram do

  def generate(string) do
    string
    |> Generator.siblings()
    |> Dictionary.filter(dictionary())
  end

  defp dictionary, do: Loader.load("wordlist.txt")
end
