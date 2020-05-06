# frozen_string_literal: true

module Subvisual
  module MathUtils
    module GreatestCommonDivisor
      def greatest_common_divisor(a, b)
        d = 0

        while a.even? && b.even?
          a /= 2
          b /= 2
          d += 1
        end

        while a != b
          if a.even?
            a /= 2
          elsif b.even?
            b /= 2
          elsif a > b
            a = (a - b) / 2
          else
            b = (b - a) / 2
          end
        end

        2**d * a
      end
    end
  end
end
