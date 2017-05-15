class Hobbit

  attr_reader :name, :disposition, :age, :short

  def initialize(name, disposition = "homebody", age = 0, short = true)
    @name = name
    @disposition = disposition
    @age = age
    @short = short
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    true if @age >= 33
  end

  def old?
    true if @age >= 101
  end

  def has_ring?
    true if @name == "Frodo"
  end

  def is_short?
    @short
  end
end
