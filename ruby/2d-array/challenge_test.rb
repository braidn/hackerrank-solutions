require 'minitest/autorun'
require_relative('./challenge')

describe('Finding hourglass sums') do
  let(:arr) { Array.new(6) }

  it('returns the larget hourglass in the 2d array') do
    input = %w[1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 0 2 4 4 0 0 0 0 2 0 0 0 0 1 2 4 0]
    build_2d_array!(input)

    _(max_sum(arr)).must_equal(19)
  end

  it('returns the larget hourglass in the 2d array') do
    input = %w[-9 -9 -9 1 1 1 0 -9 0 4 3 2 -9 -9 -9 1 2 3 0 0 8 6 6 0 0 0 0 -2 0 0 0 0 1 2 4 0]
    build_2d_array!(input)

    _(max_sum(arr)).must_equal(28)
  end

  it('returns the larget hourglass in the 2d array') do
    input = %w[1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 9 2 -4 -4 0 0 0 0 -2 0 0 0 0 -1 -2 -4 0]
    build_2d_array!(input)

    _(max_sum(arr)).must_equal(13)
  end

  def build_2d_array!(input)
    6.times do |i|
      arr[i] = input.slice!(0, 6).map(&:to_i)
    end
  end
end
