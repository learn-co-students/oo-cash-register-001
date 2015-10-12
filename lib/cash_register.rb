class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quant = 1)
    @total += (price * quant)
    quant.times {|x| @items << name}
  end

  def apply_discount
    @total *= ((100-@discount)/100.to_f)
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

end
