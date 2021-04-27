# frozen_string_literal: true

require 'minitest/autorun'
require_relative('./challenge')

describe('Amount of folks queued') do
  it('is not to too chaotic') do
    arr = [2, 1, 5, 3, 4]
    _(minimum_bribes(arr)).must_equal(3)
  end

  it('is not to too chaotic') do
    arr = [2, 5, 1, 3, 4]
    _(minimum_bribes(arr)).must_equal('Too chaotic')
  end

  it('is not to too chaotic') do
    arr = [1, 2, 5, 3, 7, 8, 6, 4]
    _(minimum_bribes(arr)).must_equal(7)
  end

  it('is not to too chaotic') do
    arr = [1, 2, 5, 3, 4, 7, 8, 6]
    _(minimum_bribes(arr)).must_equal(4)
  end
end
