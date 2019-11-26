defmodule DictionaryTest do
  use ExUnit.Case

  describe "filter/2" do
    test "on success" do
      strings = ~w(cat cup asdf some 44)
      words = ~w(cat some cup other)

      expected_result = ~w(cat cup some)

      assert Dictionary.filter(strings, words) == expected_result
    end
  end
end
