# frozen_string_literal: true

require "subvisual/array_utils"

RSpec.describe Subvisual::ArrayUtils do
  describe "#pad_right(array, to_size, with_padding = nil)" do
    context "when the array size is already greater than to_size" do
      it "returns the same array" do
        to_size = rand(1..10)
        array = Array.new(to_size + rand(1..10))

        new_array = Subvisual::ArrayUtils.pad_right(array, to_size)

        expect(new_array).to eq array
      end
    end

    context "when the array size is already equal to to_size" do
      it "returns the same array" do
        to_size = rand(1..10)
        array = Array.new(to_size)

        new_array = Subvisual::ArrayUtils.pad_right(array, to_size)

        expect(new_array).to eq array
      end
    end

    context "when the array size is less than to_size" do
      it "returns an array with <to_size> elements" do
        original_size = rand(1..10)
        to_size = original_size + rand(1..10)
        array = Array.new(original_size)

        new_array = Subvisual::ArrayUtils.pad_right(array, to_size)

        expect(new_array.size).to eq to_size
      end

      it "returns an array starting with all the elements in the original array" do
        original_size = rand(1..10)
        to_size = original_size + rand(1..10)
        array = Array.new(original_size)

        new_array = Subvisual::ArrayUtils.pad_right(array, to_size)

        expect(new_array).to start_with array
      end

      it "returns an array ending with nil elements up to to_size by default" do
        original_size = rand(1..10)
        to_size = original_size + rand(1..10)
        array = Array.new(original_size)

        new_array = Subvisual::ArrayUtils.pad_right(array, to_size)

        expect(new_array).to end_with Array.new(to_size - original_size, nil)
      end

      it "returns an array ending with padding values up to to_size" do
        original_size = rand(1..10)
        to_size = original_size + rand(1..10)
        array = Array.new(original_size)
        padding = rand(-5..5)

        new_array = Subvisual::ArrayUtils.pad_right(array, to_size, padding)

        expect(new_array).to end_with Array.new(to_size - original_size, padding)
      end
    end
  end
end
