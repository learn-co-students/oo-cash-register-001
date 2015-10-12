class CashRegister
  attr_accessor :total, :discount, :items, :price
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = []
  end

  def add_item(name, price, quant = 1)
    @total += (price * quant)
    quant.times do |x|
      @items << name
      @price << price
    end
  end

  def apply_discount
    @total *= ((100-@discount)/100.to_f)
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @items.pop
    @total -= @price.pop
  end

end
