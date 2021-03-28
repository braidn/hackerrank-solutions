# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'exploration'

describe('Mars SOS signals') do
  it 'counts 3 characters messed up in the transmission' do
    exp = Explorer.new('SOSSPSSQSSOR')
    _(exp.translate_me).must_equal 3
  end

  it 'counts 1 characters messed up in the transmission' do
    exp = Explorer.new('SOSSOT')
    _(exp.translate_me).must_equal 1
  end

  it 'counts zero characters messed up in the transmission' do
    exp = Explorer.new('SOSSOS')
    _(exp.translate_me).must_equal 0
  end
end
