class PathPoint
  attr_reader :from, :to, :direction

  def initialize(from, to, direction)
    @from = from
    @to = to
    @direction = direction
  end

  def mark!
    from.mark!(directional_asset)
  end

  def directional_asset
    direction.asset
  end
end
