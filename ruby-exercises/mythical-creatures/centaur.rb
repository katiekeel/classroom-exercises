class Centaur

  attr_reader :name, :breed, :cranky, :standing, :sick

  def initialize(name, breed, cranky = 0, standing = true, sick = false)
    @name = name
    @breed = breed
    @cranky = cranky
    @standing = standing
    @sick = sick
  end

  def shoot
    if cranky < 3 && @standing
      @cranky += 1
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if @cranky < 3 && @standing
      @cranky += 1
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    true if @cranky > 2
  end

  def standing?
    true if @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @cranky = 0
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    true if @standing == false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    @cranky = 0 if @standing
    @sick = true if @cranky == 0
  end

end
