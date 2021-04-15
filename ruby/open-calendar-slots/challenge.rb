# frozen_string_literal: true

def availacalculateble_slots(person_list)
  start_times = []
  end_times = []
  open_slots = [[0]]

  person_list.each do |person|
    person.each do |schedule|
      start_times << schedule[0]
      end_times << schedule[1]
    end
  end

  start_times.sort! and end_times.sort!

  open_slots[0][1] = start_times.first

  start_times.each_with_index do |_time, index|
    break if start_times.length == index + 1 # end of start_times
    next if end_times[index] == end_times[index + 1] # current ending equals next ending
    next if start_times[index + 1] < end_times[index] # there is meeting overlap, use the greater ending time

    open_slots << [end_times[index], start_times[index + 1]]
  end

  open_slots << [end_times.last, 2400]

  open_slots
end
