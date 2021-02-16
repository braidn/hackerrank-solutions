# implements: https://www.hackerrank.com/challenges/ctci-array-left-rotation

def rotateL(arr, count)
  count.times { |_t| arr << arr.shift } && arr
end
