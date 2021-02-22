class Path
  attr_reader :map, :start, :points

  def initialize(map, start, points = [])
    @map = map
    @start = start
    @points = points
  end

  def mark!
    points.each(&:mark!)
    start.mark!("S")
    current.mark!("E") # mark the the end
  end

  def next!
    next_point = PathFinder.new(self).perform
    return unless next_point

    points << next_point
  end

  def current
    return start if points.empty?

    points.last.to
  end

  def coordinates
    [start] + points.map(&:to)
  end

  def find_point(x, y)
    map.find_point(x, y)
  end
end
