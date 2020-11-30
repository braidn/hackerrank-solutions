require 'minitest/autorun'
require_relative './repeated-string'

describe 'counts the a\'s in an infintiely repeating string' do
  it 'aba 10 times' do
    _(repeatedString('aba', 10)).must_equal 7
  end

  it 'a 1000000000000 times' do
    _(repeatedString('a', 1000000000000)).must_equal 1000000000000
  end

  it 'string with high repeat and no a\'s' do
    _(repeatedString('x', 970770)).must_equal 0
  end

  it 'a random string many times with no a' do
    _(repeatedString('ceebbcb', 817723)).must_equal 0
  end

  it 'a random string many times with an a' do
    _(repeatedString('gfcaaaecbg', 547602)).must_equal 164280
  end

  it 'a random string many times with many characters' do
    _(repeatedString('kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm', 736778906400))
      .must_equal 51574523448
  end
end
