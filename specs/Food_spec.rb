require('minitest/autorun')
require('minitest/rg')
require_relative('../Food.rb')

class FoodTest < Minitest::Test

  def setup
    @food1 = Food.new("deep fried mars bar", 50, 30)

  end

  def test_food_name
    assert_equal("deep fried mars bar", @food1.food_name)
  end

  def test_food_price
    assert_equal(50, @food1.food_price)
  end

  def test_rejuvenation
    assert_equal(30, @food1.rejuvenation)
  end


end
