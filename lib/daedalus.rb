require 'yaml'

module Daedalus
  DATA_PATH = File.expand_path(File.join(File.dirname(__FILE__), '../data'))

  def self.start
    Daedalus::Game.new.start
  end

  def self.load_data(filename)
    YAML.load File.read(DATA_PATH + "/#{filename}.yml")
  end
end

require 'daedalus/game'
