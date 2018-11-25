require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end 
  
  def add_item(item, price, quantity=1) 
    @total += price * quantity
  end 
  
  def apply_discount
    if @discount != 0
      @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def items
    @items = []
  end 
end 

  # attr_accessor :total, :discount
  
  # def initialize(total=0, discount=0)
  #   @total = total 
  #   if discount
  #     @discount = 20
  #   end 
  # end 
  
  # def add_item(item, price, quantity=1)
  #   @total = @total + price * quantity
  # end 
  
  # def apply_discount
  #   @total = @total - @total * @discount/100
  # end
  
  # def total
  #   @total
  # end