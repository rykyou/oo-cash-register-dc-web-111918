require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total=0, discount=0)
    @total = total
    @discount = 20 if discount
  end 
  
  def add_item(item, price, quantity=1)
    total_price = price * quantity
    @total += total_price
  end 
  
  def apply_discount
    subtract = @total * @discount/100
    @total = @total - subtract
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