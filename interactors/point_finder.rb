class PointFinder
  attr_reader :path, :direction

  def initialize(path, direction)
    @path = path
    @direction = direction
  end

  def perform
    return if not_found?
    return if already_using?

   path_point
  end

  private

  def path_point
    PathPoint.new(current, point, direction)
  end

  def point
    return @point if defined?(@point)

    @point = path.find_point(*coord_in_direction)
  end

  def coord_in_direction
    x = current.x + direction.x
    y = current.y + direction.y
    [x, y]
  end

  def not_found?
    point.nil?
  end

  def already_using?
    coordinates.include?(point)
  end

  def current
    path.current
  end

  def coordinates
    path.coordinates
  end
end
