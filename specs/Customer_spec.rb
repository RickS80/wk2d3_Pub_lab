require('minitest/autorun')
require('minitest/rg')
require_relative('../Customer')

class CustomerTest < Minitest::Test

  def setup
    @customer1 = Customer.new("Raul",100, 36, 0)
  end

  def test_customer_name
    assert_equal("Raul", @customer1.customer_name)
  end

  def test_customer_wallet_contents
    assert_equal(100, @customer1.wallet_amount)
  end

  def test_customer_age
    assert_equal(36, @customer1.age)
  end

  def test_customer_drunkenness
    assert_equal(0, @customer1.drunkenness)
  end




end
