# frozen_string_literal: true

require "subvisual/string_utils"

RSpec.describe Subvisual::StringUtils do
  describe "#replace_at(string, index, replacement)" do
    it "returns a string with the character in the specified index replaced" do
      string = "Chunky bacon!"
      expected = "Chunky-bacon!"

      actual = Subvisual::StringUtils.replace_at(string, 6, "-")

      expect(actual).to eq expected
    end
  end
end
