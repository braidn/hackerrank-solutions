require "minitest/autorun"

require_relative("./rotate")

describe "Rotate Left" do
  describe "a simple array" do
    let(:count) { 4 }
    let(:arr) { [1, 2, 3, 4, 5] }

    it "rotate the array left by a count" do
      _(rotateL(arr, count)).must_equal([5, 1, 2, 3, 4])
    end
  end

  describe "a count of 10 with a scattered array" do
    let(:count) { 10 }
    let(:arr) { [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51] }

    it "rotate the array left by a count" do
    expected = [77, 97, 58, 1, 86, 58, 26, 10, 86, 51, 41, 73, 89, 7, 10, 1, 59, 58, 84, 77]
      _(rotateL(arr, count)).must_equal(expected)
    end
  end

  describe "acunt of 13 with a scattered array" do
    let(:count) { 13 }
    let(:arr) { [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97] }

    it "rotate the array left by a count" do
      expected = [87, 97, 33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60]
      _(rotateL(arr, count)).must_equal(expected)
    end
  end
end
