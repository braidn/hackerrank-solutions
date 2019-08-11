#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  puts 'Incorrect amount of Socks' if n != ar.length
  {}.tap do |h|
    ar.each do |sock|
      count = h[sock] == nil ? 1 : h[sock] +=1
      h[sock] = count
    end
  end.values.map do |count|
    0 if count == 1
    count / 2
  end.sum
end
