class Wizard

  attr_reader :name, :bearded, :rested

  def initialize(name, bearded = true, rested = 0)
    @name = name
    @bearded = bearded
    @rested = rested
  end

  def bearded?
    true if @bearded == true
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    if @rested <= 2
      true
    else
      false
    end
  end

  def cast
    @rested += 1
    return "MAGIC MISSILE!"
  end


end
