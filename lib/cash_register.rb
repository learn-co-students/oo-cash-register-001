class CashRegister

  attr_accessor :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total += (price * quantity)
    quantity.times {@items << title}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total =  @total *  (100 - @discount) /100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total -= (@price * @quantity)
  end
end
