
class Pub


attr_accessor :pub_name, :till_amount, :drink_stock

  def initialize(pub_name, till_amount, drink_stock)
    @pub_name = pub_name
    @till_amount = till_amount
    @drink_stock = drink_stock
  end

  def sell_drink(drink, customer)
    if customer.age >= 18 && customer.drunkenness <= 50
    @till_amount += drink.drink_price
    customer.wallet_amount -= drink.drink_price
    elsif customer.age < 18 || customer.drunkeness > 50
      return "Get out!"
    end
  end



end
