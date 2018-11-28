require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub')
require_relative('../Drink')
require_relative('../Customer')
require_relative('../Food')

class PubTest < Minitest::Test

  def setup
    @drink1 = Drink.new("Beer", 5, 25)
    @drink2 = Drink.new("Wine", 3, 30)
    @drink3 = Drink.new("Rum", 4, 50)
    @pub = Pub.new("Codeclan", 500, [@drink1, @drink2, @drink3])
    @customer1 = Customer.new("Raul", 500, 36, 0)
    @customer2 = Customer.new("Rick", 5, 15, 0)
    @food1 = Food.new("haggis", 30, 23)

  end

  def test_name
    assert_equal("Codeclan", @pub.pub_name)
  end

  def test_till_amount
    assert_equal(500, @pub.till_amount)
  end

  def test_drink_stock
    assert_equal([@drink1,@drink2,@drink3],@pub.drink_stock)
  end

  def test_sell__beer
    @pub.sell_drink(@drink1, @customer1)
    assert_equal(505, @pub.till_amount)
    assert_equal(495, @customer1.wallet_amount)
  end

  def test_sell__rum
    @pub.sell_drink(@drink3, @customer1)
    assert_equal(504, @pub.till_amount)
    assert_equal(496, @customer1.wallet_amount)
  end

  def test_age__pass
    @pub.sell_drink(@drink1, @customer1)
    assert_equal(505, @pub.till_amount)
  end

  def test_age__fail
    @pub.sell_drink(@drink1, @customer2)
    assert_equal("Get out!", @pub.sell_drink(@drink1, @customer2))
  end

  def test_alcohol_level__pass
    @customer1.drunkenness += @drink1.alcohol_content
    assert_equal(25, @customer1.drunkenness)
  end

  def test_alcohol_level__fail
    @customer1.drunkenness += @drink1.alcohol_content
    @customer1.drunkenness += @drink3.alcohol_content
    assert_equal(75, @customer1.drunkenness)

  end

  def test_alcohol_level_after_food
    @customer1.drunkenness += @drink1.alcohol_content
    @customer1.drunkenness -= @food1.rejuvenation
    assert_equal(2, @customer1.drunkenness)
  end


end
