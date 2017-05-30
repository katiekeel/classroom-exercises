require './lib/engine'

class Plane
  attr_reader :engines

  def initialize
    @engines = Array.new(2) { Engine.new }
  end

  def body_weight
    1000
  end

  def weight
    total_engine_weight = 0
    
    engines.each do |engine|
      total_engine_weight += engine.engine_weight
    end

    total_engine_weight + body_weight
  end
end
