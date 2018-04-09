require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :item

  @@all = []
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item = item
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if discount
      self.total = (self.total * ((100.0 - discount.to_f) / 100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def self.all
    @@all
  end

  def items
    @@all << self
    #binding.pry
  end




end
