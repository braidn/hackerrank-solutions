#!/bin/ruby

def repeatedString(s, n)
  return n if s.eql?('a')
  return 0 if s.length == 1
  return 0 if s.chars.none?(/a/)

  a_count = s.scan('a').length
  length = s.length
  extra = n % length
  a_extra = s.chars.slice(0, extra).count('a')

  (n / length * a_count) + a_extra
end
