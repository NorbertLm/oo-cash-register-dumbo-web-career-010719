class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end
  
  def apply_discount
    if self.discount != 0
      self.total *= 1 - discount.fdiv(100)
    end
  end
  
end
