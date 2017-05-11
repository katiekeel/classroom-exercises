class Unicorn

  attr_reader :name, :color, :speech

  def initialize(name, color = "white", speech = "sparkly")
    @name = name
    @color = color
    @speech = speech
  end

  def white?
    color
  end

  def sparkly?
    speech.include?("~")
  end
end
