require 'pry'
class CashRegister

attr_accessor :discount, :total, :items

@items = []

def initialize(discount = 0)
  @total = 0 
  @discount = discount
end

def add_item(item, price, quantity = 1)
  @total += price * quantity
  @last_transaction = price * quantity
  if @items == nil
    @items = []
    quantity.times do
      @items << item
    end
  else
    quantity.times do
      @items << item
    end
  end

end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    @total = @total*( 1 - (@discount.to_f / 100))
    return "After the discount, the total comes to $#{@total.to_i}."
  end
end

def void_last_transaction
  @total -= @last_transaction
end

end