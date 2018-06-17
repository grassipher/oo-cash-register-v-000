class CashRegister
  
  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
  end
  
  def discount
    @employee_discount
  end
  
  def total
    @total
  end
  
end