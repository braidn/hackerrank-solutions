#!/bin/ruby

def hurdleRace(maxJump, hurdles)
  hurdles.max <= maxJump ? 0 : hurdles.max - maxJump
end
