class Coordinate
  attr_reader :x, :y, :tile

  def initialize(x, y, tile = Tile.new)
    @x = x
    @y = y
    @tile = tile
  end

  def mark!(asset)
    tile.asset = asset
  end

  def ==(obj)
    obj.x == x && obj.y == y
  end

  def to_s
    tile.to_s
  end
end
