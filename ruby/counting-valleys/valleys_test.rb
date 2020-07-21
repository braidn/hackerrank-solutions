require "minitest/autorun"

require_relative("./valleys")

describe("Finds valleys in a walking line") do
  let(:steps) { 8 }
  let(:route) { "UDDDUDUU" }

  it("returns the number of valleys traversed") do
    _(countingValleys(steps, route)).must_equal(1)
  end
end
