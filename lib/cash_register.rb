class CashRegister
  attr_accessor :total, :discount, :items, :last
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    (1..quantity).each do |n|
      self.items.push(title)
    end
    self.last.push[title, price * quantity]
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
  
  def void_last_transaction
    self.total -= self.last[]
end
