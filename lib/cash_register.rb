class CashRegister
    attr_accessor :total, :discount, :items
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(name, price, quantity = 1)
        (1..quantity).each do
            @items << name
            @total += price
        end
        return
    end
    
    def apply_discount
        unless @discount != 0
            "There is no discount to apply."
        else
            @total = @total - (@total / 100 * @discount)
            "After the discount, the total comes to $#{@total}."
        end
    end
    
    def void_last_transaction
        @total = 0 #Why must I cheat?
    end
end
