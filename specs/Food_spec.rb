require('minitest/autorun')
require('minitest/rg')
require_relative('../Food.rb')

class FoodTest < Minitest::Test

  def setup
    @food1("deep fried mars bar", 30, 50)
    @food2("haggis", 50, 50)
  end

  def test_food_name
    assert_equal("deep fried mars bar", @food1.name)
  end


end
