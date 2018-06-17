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
  
  def apply_discount
    puts "After the discount, the total comes to $#{@total + (@total * (discount / 100))}."
    @total += @total * (discount / 100)
  end
  
end