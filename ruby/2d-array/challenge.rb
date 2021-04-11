# frozen_string_literal: true

def max_sum(arr)
  max = -63
  (0...4).to_a.each do |r|
    (0...4).to_a.each do |c|
      total =
        arr[r][c] + arr[r][c + 1] + arr[r][c + 2] +
        arr[r + 1][c + 1] +
        arr[r + 2][c] + arr[r + 2][c + 1] + arr[r + 2][c + 2]

      max = max < total ? total : max
    end
  end

  max
end
