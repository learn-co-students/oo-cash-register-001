require 'pry'

class CashRegister
  attr_accessor :total, :discount, :cart

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    quantity.times { @cart << item }
    @total += price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total -= @total * (@discount * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @cart
  end
end