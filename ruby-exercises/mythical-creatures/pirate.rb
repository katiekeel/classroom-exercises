class Pirate

  attr_reader :name, :job, :cursed, :booty

  def initialize(name, job = "Scallywag", cursed = 0, booty = 0)
    @name = name
    @job = job
    @cursed = cursed
    @booty = booty
  end

  def cursed?
    true if @cursed > 2
  end

  def commit_heinous_act
    @cursed += 1
  end

  def rob_ship
    @booty += 100
  end

end
