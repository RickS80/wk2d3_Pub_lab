require('minitest/autorun')
require('minitest/rg')
require_relative('../Drink.rb')

class DrinkTest < Minitest::Test

  def setup
    @drink = Drink.new("Beer", 5)

  end

  def test_drink_name
    assert_equal("Beer", @drink.drink_name)
  end

  def test_drink_price
    assert_equal(5, drink.drink_price)
  end

end
