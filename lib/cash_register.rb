class CashRegister
  
  def initialize(discount = 0)
    @total = 0
    @employee_discount = discount
  end
  
  def discount(discount)
    @employee_discount = discount
  end
  
end