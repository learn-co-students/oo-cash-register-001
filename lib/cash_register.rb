
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @total += (price * quantity)
    @last_trans = [name, (price * quantity)]
    for i in 1..quantity
      items << name
    end
  end

  def apply_discount
    if @discount
      @total = (@total * (1-(@discount/100.0))).round
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
    #binding.pry
  end

  def void_last_transaction
    @total -= @last_trans[1]
  end

end