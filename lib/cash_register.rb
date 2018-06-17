class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @cart = []
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price)
    @cart << title
    @total += price
  end
  
end