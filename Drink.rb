class Drink

attr_reader :drink_name, :drink_price, :alcohol_content

  def initialize(drink_name, drink_price, alcohol_content)
    @drink_name = drink_name
    @drink_price = drink_price
    @alcohol_content = alcohol_content
  end


end
