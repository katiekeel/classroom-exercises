class Werewolf

  attr_reader :name, :location, :human, :hungry

  def initialize(name, location = nil, human = true, hungry = false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry
  end

  def human?
    true if @human == true
  end

  def change!
    if @human == true
      @human = false
    else
      @human = true
    end
    if @hungry == true
      @hungry = false
    else
      @hungry = true
    end
  end

  def wolf?
    true if @human == false
  end

  def hungry?
    true if @hungry == true
  end

  def eat(victim)
    if @human == false
      @hungry = false
      victim.status = :dead
    end
  end


end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end
