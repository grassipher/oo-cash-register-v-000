class CashRegister
  
  attr_accessor :total, :discount
  attr_reader : items
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
    @last_item = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @total += (price * quantity) 
    @last_item.clear
    @last_item << title
    @last_item << price
    @last_item << quantity
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    @items.pop
    @total -= @last_item[0] * @last_item[1]
  end
  
end