class CashRegister

attr_reader :discount, :items, :last_tranzaction
attr_accessor :total
 
def initialize(*discount)
    @discount = discount[0]
    @total = 0
    @items = []
end

def add_item(item, price, *quantity)
  quantity[0] ||= 1
  self.total += price*quantity[0]
  quantity[0].times do 
    @items << item
  end
  @last_tranzaction = price*quantity[0]
end

def apply_discount
  if self.discount
    self.total *= 1 - self.discount*0.01
    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  self.total -= self.last_tranzaction
end

end
