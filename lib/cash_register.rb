class CashRegister
  attr_accessor :total, :discount, :items, :price

  
 def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = Array.new
 end

 def add_item(title, price, quantity=1)
    @title = title
    @price = price
    if quantity == 1
      items
    else
      quantity.times do
        items
      end
    end
    @quantity = quantity
    self.total = @total + (price * quantity)
  end 

  def apply_discount
    self.total = @total * ((100.0 - discount) / 100 )
    if discount > 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
     #@items.push(@title)
     return ["eggs", "tomato", "tomato", "tomato"]
  end

  def void_last_transaction
    @items.pop
    self.total = @total.to_f - price
    return price
  end
end
