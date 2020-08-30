require "minitest/autorun"

require_relative("./meal")

describe("splitting the bill") do
  it("split evenly") do
    not_eaten = 1
    bill = [3, 10, 2, 9]
    charge = 12

    # (3 + 10 + 2 + 9) / 2 but, the most expensive dish wasn't shared so
    # the user needs to refund 5 dollars to get to 7 (second test)
    _(bonAppetit(bill, not_eaten, charge)).must_equal(5)
  end

  it("not split evenly") do
    not_eaten = 1
    bill = [3, 10, 2, 9]
    charge = 7

    # (3 + 2 + 9) / 2 = 14. Split by 2 people would be 7 individually
    _(bonAppetit(bill, not_eaten, charge)).must_equal("Bon Appetit")
  end
end
