class CashRegister
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @last_price = price
  end

  def apply_discount
    puts @discount
    if @discount 
      @total -= (@total * @discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_price
    @items.pop
  end
end
