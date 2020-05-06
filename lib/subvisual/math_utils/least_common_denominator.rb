# frozen_string_literal: true

module Subvisual
  module MathUtils
    module LeastCommonDenominator
      def least_common_denominator(a, b)
        (a * b).abs / MathUtils.greatest_common_divisor(a, b)
      end
    end
  end
end
