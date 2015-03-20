require 'daedalus/cli'
require 'daedalus/map'

module Daedalus
  class Game
    attr_accessor :map

    def initialize
      @map = Map.new
    end

    def start
      Cli.new(self).start
    end

    def execute command
      verb, noun = command.split.map(&:downcase)

      case verb
      when "move"
        self.map.move noun
      when "attack"
        self.map.monster.fight
      when "pickup"
        self.player.inventory.add self.map.item
      when "drop"
        self.player.inventory.drop self.map.item
      else
        "That's not a command!"
      end
    end

  end
end
