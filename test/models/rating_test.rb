require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid if score is between 0 and 10" do
    0.upto(10).each do |i|
      rating = Rating.new(score:10)
      rating.valid?
      assert_empty.rating.errors[:score]
    end
  end

  test "invalid if score is not between 0" do
    rating = Rating.new(score:-1)
    rating.valid?
    assert_empty rating.errors[:score].empty?
  end

  test "invalid if score is not between 0 and 10" do
    rating = Rating.new(score:11)
    rating.valid?
    assert_empty rating.errors[:score].empty?
  end
end
