# frozen_string_literal: true

require "subvisual/math_utils"

RSpec.describe Subvisual::MathUtils do
  describe "#greatest_common_divisor(a,b)" do
    [
      { a: 5,  b: 8,  gcd: 1 },
      { a: 48, b: 18, gcd: 6 },
    ].each do |test_case|
      a = test_case[:a]
      b = test_case[:b]
      gcd = test_case[:gcd]
      it "for a = #{a}, b = #{b}, it returns #{gcd}" do
        result = Subvisual::MathUtils.greatest_common_divisor(a, b)

        expect(result).to eq gcd
      end
    end
  end
end
