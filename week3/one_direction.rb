class Person
  attr_reader :name,
              :age

  def initialize(name, age)
    @name = name
    @age  = age
  end
end

one_direction = []

one_direction << Person.new("Niall", 22)
one_direction << Person.new("Liam", 22)
one_direction << Person.new("Harry", 22)
one_direction << Person.new("Louis", 24)
one_direction << Person.new("Zayn", 23)

oldest = one_direction.max_by do |person|
  person.age
end
puts oldest.name

alpha = one_direction.min_by do |person|
  person.name
end
puts alpha.name
