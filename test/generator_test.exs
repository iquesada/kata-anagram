defmodule GeneratorTest do
  use ExUnit.Case

  describe "siblings/1" do
    test "generate all combinations of letters" do
      word = "cat"
      expected_result = Enum.sort(~w(cat cta act atc tac tca))

      assert Enum.sort(Generator.siblings(word)) == expected_result
    end
  end
end
