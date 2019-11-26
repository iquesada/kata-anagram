defmodule Word do
  def anagram?(word1, word2) do
    sort_string(word1) == sort_string(word2)
  end

  defp sort_string(word) do
    word
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end
