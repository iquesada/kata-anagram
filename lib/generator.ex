defmodule Generator do
  def strings(word) do
    word
    |> String.graphemes()
    |> permutations()
    |> Enum.map(&Enum.join/1)
  end

  defp permutations([]), do: [[]]

  defp permutations(list),
    do: for(elem <- list, rest <- permutations(list -- [elem]), do: [elem | rest])
end
