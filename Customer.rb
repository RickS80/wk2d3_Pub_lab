class Customer

attr_accessor :customer_name, :wallet_amount, :age, :drunkenness

  def initialize(customer_name, wallet_amount, age, drunkenness)
    @customer_name = customer_name
    @wallet_amount = wallet_amount
    @age = age
    @drunkenness = drunkenness
  end

end
