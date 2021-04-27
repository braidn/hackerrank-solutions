# frozen_string_literal: true

def minimum_bribes(queue)
  count = 0
  chaotic = false
  queue.each_index do |idx|
    chaotic = true if (queue[idx] - (idx + 1)) > 2

    queue.each_index do |sidx|
      next if sidx > idx

      count += 1 if queue[sidx] > queue[idx]
    end
  end

  chaotic ? 'Too chaotic' : count
end
