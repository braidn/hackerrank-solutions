# frozen_string_literal: true

require 'minitest/autorun'
require_relative('./challenge')

describe('Array Manipulation') do
  it('returns the largest number in the array') do
    length = 5
    queries = [[1, 2, 100], [2, 5, 100], [3, 4, 100]]
    _(array_manipulation(length, queries)).must_equal(200)
  end

  it('returns the largest number in the array') do
    length = 10
    queries = [[1, 5, 3], [4, 8, 7], [6, 9, 1]]
    _(array_manipulation(length, queries)).must_equal(10)
  end

  it('returns the largest number in the array') do
    length = 10
    queries = [[1, 5, 3], [4, 8, 7], [6, 9, 1]]
    _(array_manipulation(length, queries)).must_equal(10)
  end
end
