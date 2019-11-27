defmodule Loader do
  def load(file) do
    "../files/#{file}"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split([" ", "\n"])
    |> Enum.reject(&(&1 == ""))
  end
end
