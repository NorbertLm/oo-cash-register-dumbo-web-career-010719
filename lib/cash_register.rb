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
      self.total = self.total.to_i
    elsif self.discount == 0
      return "There is no discount to apply."
    end
    "After the discount, the total comes to $#{self.total}."
  end
  
end
