#!/bin/ruby

require "json"
require "stringio"

def countingValleys(n, s)
  map, count, valley = {D: -1, U: 1}, 0, 0

  s.each_char do |c|
    direction = c.to_sym
    valley += 1 if count == -1 && direction == :U
    count += map[direction]
  end

  valley
end
