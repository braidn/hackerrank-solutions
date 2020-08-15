require 'minitest/autorun'
require_relative './clouds'

describe("Jumping on the Clouds") do
  let(:cloud7) { [0, 0, 1, 0, 0, 1, 0] }
  it 'finds the smallest path to win for a 7 cloud trail' do
    _(jumpingOnClouds(cloud7)).must_equal(4)
  end

  let(:cloud6) { [0, 0, 0, 0, 1, 0] }
  it 'finds the smallest path to for a 6 cloud trail' do
    _(jumpingOnClouds(cloud6)).must_equal(3)
  end

  let(:cloud10) { [0, 0, 1, 0, 0, 0, 0, 1, 0, 0] }
  it 'finds the smallest path to for a 10 cloud trail' do
    _(jumpingOnClouds(cloud10)).must_equal(6)
  end
end
