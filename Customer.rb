class Customer

attr_accessor :customer_name, :wallet_amount, :age

  def initialize(customer_name, wallet_amount, age)
    @customer_name = customer_name
    @wallet_amount = wallet_amount
    @age = age
  end

end
