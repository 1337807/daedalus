module Daedalus
  class Item
    ITEMS = Daedalus.load_data('items')

    attr_accessor :strength, :name

    def self.random
      item = ITEMS.map { |k,v| { name: k, strength: v['strength'] } }.sample
      new(item)
    end

    def initialize(attributes)
      @name = attributes[:name]
      @strength = attributes[:strength]
    end

  end
end
