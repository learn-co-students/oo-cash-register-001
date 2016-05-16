require 'pry'
# http://stackoverflow.com/questions/9710303/rails-optional-argument

class CashRegister

  attr_accessor :total, :discount, :title

  def initialize discount=nil
    @total = 0
    @discount = discount
  end

  def add_item(title, price, numberz_of_items = 1)
    @title ||= []
    @last_transaction = price * numberz_of_items
    # binding.pry
    if numberz_of_items > 1
      numberz_of_items.times do 
        @title << title
      end
    else
      @title << title
    end
    @title
    @price = price
    @total += price * numberz_of_items
  end

  def apply_discount
    # expected: 800
    # got: 980
    # binding.pry
    # @discount = @total * @discount.to_f * 0.01
    # @total = @total - @discount
    if @discount != nil
      @discount = @total * @discount.to_f * 0.01
      @total = @total - @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @title
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end


















#
