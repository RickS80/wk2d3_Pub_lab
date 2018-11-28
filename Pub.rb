
class Pub


attr_accessor :pub_name, :till_amount, :drink_stock

  def initialize(pub_name, till_amount, drink_stock)
    @pub_name = pub_name
    @till_amount = till_amount
    @drink_stock = drink_stock
  end

  def sell_drink(drink, customer)
    @till_amount += drink.drink_price
    customer.wallet_amount -= drink.drink_price
  end

end
