defmodule GeneratorTest do
  use ExUnit.Case

  describe "strings/1" do
    test "generate all combinations of letters" do
      word = "cat"
      expected_result = Enum.sort(~w(cat cta act atc tac tca))

      assert Enum.sort(Generator.strings(word)) == expected_result
    end
  end
end
