defmodule Generator do
  def siblings(word) do
    word
    |> String.graphemes()
    |> permutations()
    |> Enum.map(&Enum.join/1)
  end

  def descendants(word) do
    word
    |> String.graphemes()
    |> combinations(String.length(word) - 1)
    |> Enum.map(&Enum.join/1)
  end

  defp permutations([]), do: [[]]

  defp permutations(list),
    do: for(elem <- list, rest <- permutations(list -- [elem]), do: [elem | rest])

  def combinations(list, num)
  def combinations(_list, 0), do: [[]]
  def combinations(list = [], _num), do: list

  def combinations([head | tail], num) do
    Enum.map(combinations(tail, num - 1), &[head | &1]) ++ combinations(tail, num)
  end
end
