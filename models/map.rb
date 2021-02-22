class Map
  attr_reader :coordinates

  def initialize(coordinates)
    @coordinates = coordinates
  end

  def self.create_square(size)
    coords = (1..size).flat_map do |x|
      (1..size).map do |y|
        Coordinate.new(x, y, Tile.new(Tile.random_asset))
      end
    end
    new(coords)
  end

  def find_point(x, y)
    coordinates.find {|c| c.x == x && c.y == y }
  end

  def random_point
    coordinates.sample
  end

  def to_s
    coordinates.group_by(&:y).map do |y, coords|
      (min_x..max_x).map do |x|
        coord = find_point(x, y) || " "
        coord.to_s
      end.join("  ")
    end
  end

  private

  def max_x
    coordinates.max_by(&:x).x
  end

  def max_y
    coordinates.max_by(&:y).y
  end

  def min_x
    coordinates.min_by(&:x).x
  end

  def min_y
    coordinates.min_by(&:y).y
  end
end
