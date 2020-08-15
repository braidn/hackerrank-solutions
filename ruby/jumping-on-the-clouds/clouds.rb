#!/bin/ruby

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(clouds)
  jumps = 0
  idx = 0

  until idx >= clouds.count - 1
    if (clouds[idx] == 0 && clouds[idx + 1] == 0) || (clouds[idx] == 0 && clouds[idx + 1] == 1)
      idx += 2
      jumps += 1
      next
    end

    if clouds[idx] == 1
      idx += 1
      jumps += 1
      next
    end
  end

  jumps
end
