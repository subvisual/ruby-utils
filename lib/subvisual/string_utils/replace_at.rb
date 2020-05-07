# frozen_string_literal: true

module Subvisual
  module StringUtils
    module ReplaceAt
      def replace_at(string, index, replacement)
        string.chars.tap do |characters|
          characters[index] = replacement
        end.join
      end
    end
  end
end
