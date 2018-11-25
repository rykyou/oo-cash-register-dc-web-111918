require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = 0 if discount
  end 
  
  def add_item(item, price, quantity=1) 
    @total += price * quantity
  end 
  
  def apply_discount
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
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