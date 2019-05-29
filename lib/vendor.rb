require 'pry'

class Vendor

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
    @inventory.default = 0
  end


  def stock(item, quantity)
    if @inventory.has_key?(item)
      @inventory[item] += quantity
    else
    @inventory[item] = quantity
    end
  end

  def check_stock(item)
    @inventory.has_key?(item)
    if @inventory.has_key?(item) == false
      @inventory.default
    else
      @inventory.fetch(item)
    end
  end
end
