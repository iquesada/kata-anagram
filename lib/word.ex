defmodule Word do
  def anagram?(word1, word2) do
    grapheme1 = String.graphemes(word1)
    grapheme2 = String.graphemes(word2)

    Enum.sort(grapheme1) == Enum.sort(grapheme2)
  end
end
