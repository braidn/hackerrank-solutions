require 'minitest/autorun'
require_relative('./challenge')

describe 'Ransom note' do
  it 'prints yes because the note can be formed from the magazine' do
    magazine = 'give me one grand today night'
    note = 'give one grand today'
    _(check_magazine(magazine, note)).must_equal 'Yes'
  end

  it 'prints no because the note can not be formed from the magazine' do
    magazine = 'two times three is not four'
    note = 'two times two is four'

    _(check_magazine(magazine, note)).must_equal 'No'
  end

  it 'prints yes because the note can be formed from the magazine' do
    magazine = 'two times two three is not four'
    note = 'two times two is four'

    _(check_magazine(magazine, note)).must_equal 'Yes'
  end

  it 'prints no because the note can not be formed from the magazine' do
    magazine = 'ive got a lovely bunch of coconuts'
    note = 'ive got some coconuts'

    _(check_magazine(magazine, note)).must_equal 'No'
  end
end
