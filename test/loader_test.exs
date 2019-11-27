defmodule LoaderTest do
  use ExUnit.Case

  describe "load/1" do
    [first | _rest] = Loader.load("wordlist.txt")

    assert first == "acrobat"
  end
end
