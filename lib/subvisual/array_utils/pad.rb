# frozen_string_literal: true

module Subvisual
  module ArrayUtils
    module Pad
      def pad_right(array, size, padding = nil)
        return array if array.size >= size

        array + Array.new(size - array.size, padding)
      end
    end
  end
end
