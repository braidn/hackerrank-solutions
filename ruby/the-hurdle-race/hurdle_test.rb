require 'minitest/autorun'
require_relative 'hurdle'

describe("Magic potions required") do
  it "establishes the correct amount required for a maxJump of 4" do
    hurdles = %w[1 6 3 5 2].map(&:to_i)
    maxJump = 4

    _(hurdleRace(maxJump, hurdles)).must_equal 2
  end

  it "establishes the correct amount required for a maxJump of 7" do
    hurdles = %w[2 5 4 5 2].map(&:to_i)
    maxJump = 7

    _(hurdleRace(maxJump, hurdles)).must_equal 0
  end
end
