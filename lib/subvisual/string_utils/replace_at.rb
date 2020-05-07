# frozen_string_literal: true

module Subvisual
  module StringUtils
    module ReplaceAt
      def replace_at(string, index, replacement)
        indices = index.is_a?(Enumerable) ? index : [index]

        string.chars.tap do |characters|
          indices.each do |i|
            characters[i] = replacement
          end
        end.join
      end
    end
  end
end
