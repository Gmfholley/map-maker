class PathFinder
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def perform
    possible_points.sample
  end

  private

  def possible_points
    Direction.all.map do |direction|
      PointFinder.new(path, direction).perform
    end.compact
  end
end
