# frozen_string_literal: true

require "subvisual/math_utils/greatest_common_divisor"
require "subvisual/math_utils/least_common_denominator"

module Subvisual
  module MathUtils
    extend GreatestCommonDivisor
    extend LeastCommonDenominator
  end
end
