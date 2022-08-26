# frozen_string_literal: true

def array_manipulation(_numb, queries)
  arr = []
  queries.each do |query|
    range = (query[0] - 1)..(query[1] - 1)
    range.each do |idx|
      arr[idx] += query[2]
    end
  end

  arr.max
end
