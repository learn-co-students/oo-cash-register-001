class CashRegister
    attr_accessor :items, :discount, :total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @prices = {}
    end

    def add_item(item, price, quantity=1)
        self.total += price * quantity
        @prices[item] =  price
        quantity.times do
            items << item
        end
    end


    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            self.total = @total * (1-@discount/100.0)
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        self.total -= @prices[@items[-1]]
        self.items = @items[0,@items.length-1]
    end
end
 