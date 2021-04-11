require 'minitest/autorun'
require_relative('./challenge')

describe('Compares two strings') do
  it('Returns true if any part of one string is apparent in the other') do
    str1 = 'Hello'
    str2 = 'World'

    _(two_strings(str1, str2)).must_equal 'YES'
  end

  it('Returns true if any part of one string is apparent in the other') do
    str1 = 'hi'
    str2 = 'world'

    _(two_strings(str1, str2)).must_equal 'NO'
  end
end
