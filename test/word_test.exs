defmodule WordTest do
  use ExUnit.Case

  describe "anagram?" do
    test "on success" do
      assert Word.anagram?("cart", "trac")
    end

    test "on no anagram" do
      assert Word.anagram?("cart", "trac")
    end
  end
end
