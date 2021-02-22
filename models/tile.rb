class Tile
  GEOGRAPHY_ASSETS = %w(+ ~ ^ * .)

  attr_accessor :asset

  def initialize(asset = nil)
    @asset = asset
  end

  def to_s
    asset
  end

  def self.random_asset
    GEOGRAPHY_ASSETS.sample
  end
end
