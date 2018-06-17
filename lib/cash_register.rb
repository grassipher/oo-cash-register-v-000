class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @cart = []
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @cart << title
    end
    @total += (price * quantity)
  end
  
end