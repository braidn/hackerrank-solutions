require 'minitest/autorun'
require_relative('./challenge')

describe('#maximum_toys') do
  it('returns the maximum amount of toys purchaseable depending on budget') do
    budget = 50
    toys = [1, 12, 5, 111, 200, 1000, 10]
    _(maximum_toys(toys, budget)).must_equal(4)
  end

  it('returns the maximum amount of toys purchaseable depending on budget') do
    budget = 7
    toys = [1, 2, 3, 4]
    _(maximum_toys(toys, budget)).must_equal(3)
  end

  it('returns the maximum amount of toys purchaseable depending on budget') do
    budget = 15
    toys = [3, 7, 2, 9, 4]
    _(maximum_toys(toys, budget)).must_equal(3)
  end
end
