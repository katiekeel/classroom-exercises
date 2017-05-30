class Engine

  attr_reader :running

  def initialize
    @running = false
  end

  def core_weight
    250
  end

  def propeller_weight
    50
  end

  def start
    @running = true
  end

  def running?
    true if @running
  end
end
