# frozen_string_literal: true

require 'minitest/autorun'
require_relative('./challenge')

describe('open calendar slots') do
  it('returns open spaces for meetings over a 24 hour period') do
    person1 = [[930, 1230], [1400, 1525], [1600, 1630]]
    person2 = [[900, 1100], [1300, 1325], [1800, 2100]]

    openings = [[0, 900], [1230, 1300], [1325, 1400], [1525, 1600], [1630, 1800], [2100, 2400]]

    _(availacalculateble_slots([person1, person2])).must_equal(openings)
  end
end
