class Medusa

  attr_accessor :name, :statues

  def initialize(name, statues = [])
    @name = name
    @statues = statues
  end

  def stare(victim)
    victim.stoned = true
    if @statues.length < 3
      @statues << victim
    else
      @statues.shift
      @statues << victim
    end
  end

end

class Person

  attr_accessor :name, :stoned

  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    true if @stoned == true
  end

end
