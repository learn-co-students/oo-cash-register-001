require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items.push(title)
    end
    @item = {:title => title, :price => price, :quantity => quantity}
  end

  def apply_discount
    if @discount > 0
      @total = @total * (1.0 - (@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @item[:price] * @item[:quantity]
  end
end
