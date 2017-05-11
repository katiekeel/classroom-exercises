class Person

  attr_accessor :age, :country, :height, :alive

  attr_reader :name, :gender

  def initialize(name, dob, gender, country, height)
    @name = name
    @dob = dob
    @gender = gender
    @country = country
    @height = height
    @alive = true
  end

  def list_person
    puts "#{name} is #{age} years old, #{gender}, from #{country}, and #{height} tall."
  end

  def age
    Time.now.year - @dob
  end

  def kill
    @alive = false
    puts "You killed #{name}!"
  end

  def alive?
    if @alive
      puts "Yep, #{name} is alive!"
    else
      puts "No, you killed #{name}."
    end
  end

  # def imperial_height
  #   divmod_output = @height
  #   divmod_output1 = inches.divmod(12)
  #   divmod_output1[0], divmod_output1[1]
  # end
end

person1 = Person.new("George Michael", 2003, "M", "USA", 68)
person2 = Person.new("Gob", 1980, "M", "USA", 73)
person3 = Person.new("Lucille", 1947, "F", "USA", 66)
person4 = Person.new("Annyong", 2005, "M", "Korea", 60)
person5 = Person.new("Marta", 1985, "F", "Mexico", 65)

person1.list_person
person2.list_person
person3.list_person
person4.list_person
person5.list_person
