class Direction
  attr_accessor :name, :x, :y, :asset

  def initialize(name, x, y, asset)
    @name = name
    @x = x
    @y = y
    @asset = asset
  end

  def self.all
    @@directions ||=
    [
      Direction.new(:northwest, -1, -1, '⬉'),
      Direction.new(:north, 0, -1, '↑'),
      Direction.new(:northeast, 1, -1, '⬈'),
      Direction.new(:west, -1, 0, '←'),
      Direction.new(:east, 1, 0, '→'),
      Direction.new(:southwest, -1, 1, '⬋'),
      Direction.new(:south, 0, 1, '↓'),
      Direction.new(:southeast, 1, 1, '⬊'),
    ]
  end

  def to_s
    asset
  end
end
