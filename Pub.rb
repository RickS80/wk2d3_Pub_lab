
class Pub


attr_reader :pub_name, :till_amount, :drink_stock

  def initialize(pub_name, till_amount, drink_stock)
    @pub_name = pub_name
    @till_amount = till_amount
    @drink_stock = drink_stock
  end

  def sell_drink(drink)
    @till_amount += drink.drink_price
    # @wallet -= drink.drink_price
  end

end
