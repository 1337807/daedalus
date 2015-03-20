module Daedalus
  class Inventory
    attr_accessor :items

    def initialize
      @items = []
    end

    def add item
      self.items << item
    end

    def drop item
      self.items.delete item
    end
  end
end
