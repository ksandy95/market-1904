require 'pry'

class Market

  attr_reader :name
  def initialize(name)
    @name = name
    @item_list = []
    @total_inventory = {}
    @vendors = []
  end

  def inventory

  end

  def add_vendor()
    @vendors << vendor
  end

end
