require "minitest/autorun"
require_relative './pairs'

describe "Finds Pairs from Array" do
  let(:length) { 9 }
  let(:socks) { %w[10 20 20 10 10 30 50 10 20] }

  it "returns a maximum amount of pairs" do
    sockMerchant(length, socks).must_equal(3)
  end
end
