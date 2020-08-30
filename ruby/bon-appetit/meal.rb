def bonAppetit(bill, k, b)
  not_eaten = bill[k]
  split = (bill.sum - not_eaten) / 2

  return "Bon Appetit" if split.equal?(b)
  b - split
end
