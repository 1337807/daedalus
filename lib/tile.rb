class Tile
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def location
    [self.x, self.y, self.z]
  end
end
