# frozen_string_literal: true

def maximum_toys(prices, budget, purchasable = [])
  prices.reject! { |price| price > budget }
  return prices.length if prices.sum <= budget

  prices.sort.each do |price|
    if (price + purchasable.sum) <= budget
      purchasable << price && next
    end
  end
  purchasable.count
end
