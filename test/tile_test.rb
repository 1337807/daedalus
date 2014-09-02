require 'tile'

class TileTest < MiniTest::Unit::TestCase
  def test_tile_has_features
    tile = Tile.new(1,2,3)
    assert_equal [1, 2, 3], tile.location
  end
end

