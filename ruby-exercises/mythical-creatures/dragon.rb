class Dragon

  attr_reader :name, :color, :rider, :hungry

  def initialize(name, color, rider, hungry = 0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
  end

  def hungry?
    if @hungry < 3
      true
    else
      false
    end
  end

  def eat
    @hungry += 1
  end

end
