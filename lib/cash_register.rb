class CashRegister
  
  attr_accessor :total, :discount
  attr_reader : items
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @total += (price * quantity) 
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
end