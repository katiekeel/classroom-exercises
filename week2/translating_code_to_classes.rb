# Here's the standalone way to do SuperFizzBuzz
#
# 1000.times do |num|
#   if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
#     puts "SuperFizzBuzz"
#   elsif num % 3 == 0 && num % 7 == 0
#     puts  "SuperFizz"
#   elsif num % 5 == 0 && num % 7 == 0
#     puts "SuperBuzz"
#   elsif num % 3 == 0 && num % 5 == 0
#     puts "FizzBuzz"
#   elsif num % 3 == 0
#     puts "Fizz"
#   elsif num % 5 == 0
#     puts "Buzz"
#   elsif num % 7 == 0
#     puts "Super"
#   else
#     puts num
#   end
# end

# Now we've created a class to hold our loop

# class SuperFizz
#
#   1000.times do |num|
#     if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
#       puts "SuperFizzBuzz"
#     elsif num % 3 == 0 && num % 7 == 0
#       puts  "SuperFizz"
#     elsif num % 5 == 0 && num % 7 == 0
#       puts "SuperBuzz"
#     elsif num % 3 == 0 && num % 5 == 0
#       puts "FizzBuzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 7 == 0
#       puts "Super"
#     else
#       puts num
#     end
#   end
#
# end

# Now our loop is in a method, go, we can reuse on any instance of this class
# class SuperFizz
#
#   def go
#     100.times do |num|
#       if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
#         puts "SuperFizzBuzz"
#       elsif num % 3 == 0 && num % 7 == 0
#         puts  "SuperFizz"
#       elsif num % 5 == 0 && num % 7 == 0
#         puts "SuperBuzz"
#       elsif num % 3 == 0 && num % 5 == 0
#         puts "FizzBuzz"
#       elsif num % 3 == 0
#         puts "Fizz"
#       elsif num % 5 == 0
#         puts "Buzz"
#       elsif num % 7 == 0
#         puts "Super"
#       else
#         puts num
#       end
#     end
#   end
#
# end
#
# superfizz = SuperFizz.new
# superfizz.go


# Now our go method takes an argument, so we can specify how far we want to go
# with each instance

# class SuperFizz
#
#   def go(number)
#     number.times do |num|
#       if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
#         puts "SuperFizzBuzz"
#       elsif num % 3 == 0 && num % 7 == 0
#         puts  "SuperFizz"
#       elsif num % 5 == 0 && num % 7 == 0
#         puts "SuperBuzz"
#       elsif num % 3 == 0 && num % 5 == 0
#         puts "FizzBuzz"
#       elsif num % 3 == 0
#         puts "Fizz"
#       elsif num % 5 == 0
#         puts "Buzz"
#       elsif num % 7 == 0
#         puts "Super"
#       else
#         puts num
#       end
#     end
#   end
#
# end
#
#
# superfizz = SuperFizz.new
# superfizz.go(12)

# Here we added an initialize, so we can use our preferred number when we create
# an instance of the class, rather than when we use the run method
# We set an instance variable, number, to be able to reuse the argument from initialize
# in the run method
# We also set an attr_reader for number, which allows us to access the value of number
# without using an @ symbol every time
# Use attr_reader with care - if you name something number outside this class, it may
# read that rather than the desired argument
#
# class SuperFizz
#
#   attr_reader :number
#
#   def initialize(number)
#     @number = number
#   end
#
#   def run
#     @number.times do |num|
#       if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
#         puts "SuperFizzBuzz"
#       elsif num % 3 == 0 && num % 7 == 0
#         puts  "SuperFizz"
#       elsif num % 5 == 0 && num % 7 == 0
#         puts "SuperBuzz"
#       elsif num % 3 == 0 && num % 5 == 0
#         puts "FizzBuzz"
#       elsif num % 3 == 0
#         puts "Fizz"
#       elsif num % 5 == 0
#         puts "Buzz"
#       elsif num % 7 == 0
#         puts "Super"
#       else
#         puts num
#       end
#     end
#   end
#
# end
#
#
# super_fizz_buzz = SuperFizz.new(105).run
# super_fizz      = SuperFizz.new(21).run
# super_buzz      = SuperFizz.new(35).run
# fizz_buzz       = SuperFizz.new(15).run
# fizz            = SuperFizz.new(3).run
# buzz            = SuperFizz.new(5).run
# supper          = SuperFizz.new(7).run
# flat            = SuperFizz.new(8).run


# Now we want to break our giant loop method down into several methods, each
# of which adds the appropriate word onto our output

# class SuperFizz
#   attr_reader :num, :result
#
#   # Here we create an empty string, result, to hold our generated word
#   # We also add an attr_reader above for it
#   def initialize(num)
#     @num = num
#     @result = ""
#   end
#
#   # Here we break run down into individual if loops for each of the conditions
#   def run
#     if @num % 7 == 0
#       @result << "Super"
#     end
#
#     if @num % 3 == 0
#       @result << "Fizz"
#     end
#
#     if @num % 5 == 0
#       @result << "Buzz"
#     end
#
#     if @result.empty?
#       @result << @num.to_s
#     end
#
#     p @result
#
#   end
#
# end
#
# super_fizz_buzz = SuperFizz.new(105).run
# super_fizz      = SuperFizz.new(21).run
# super_buzz      = SuperFizz.new(35).run
# fizz_buzz       = SuperFizz.new(15).run
# fizz            = SuperFizz.new(3).run
# buzz            = SuperFizz.new(5).run
# supper          = SuperFizz.new(7).run
# flat            = SuperFizz.new(8).run


# Now we add a new method, divisible_by, that will allow us to examine
# each condition individually and place it into its own method rather than one
# big loop
# These methods will each return the appropriate word for the condition
# class SuperFizz
#
#   attr_reader :num, :result
#
#   # Here we create an empty string, result, to hold our generated word
#   # We also add an attr_reader above for it
#   def initialize(num)
#     @num = num
#     @result = ""
#   end
#
#   # Here we define run, which packages all of our methods in order into one method
#   # that we can call on each instance of our class
#   def run
#     divide_by_7
#     divide_by_3
#     divide_by_5
#     validate_result
#     p @result
#   end
#
#   # Here we define divisible_by, which uses the argument num from initialize and
#   # performs the actual math operation for each condition
#   def divisible_by?(amount)
#     @num % amount == 0
#   end
#
#   # Here we break run down into individual if loops for each of the conditions
#   # These methods are predicate methods - their result is predicated on what
#   # divisible_by returns
#   def divide_by_7
#     if divisible_by?(7)
#       @result << "Super"
#     end
#   end
#
#   def divide_by_3
#     if divisible_by?(3)
#       @result << "Fizz"
#     end
#   end
#
#   def divide_by_5
#     if divisible_by?(5)
#       @result << "Buzz"
#     end
#   end
#
#   def validate_result
#     if @result.empty?
#       @result << @num.to_s
#     end
#   end
#
# end
#
# super_fizz_buzz = SuperFizz.new(105).run
# super_fizz      = SuperFizz.new(21).run
# super_buzz      = SuperFizz.new(35).run
# fizz_buzz       = SuperFizz.new(15).run
# fizz            = SuperFizz.new(3).run
# buzz            = SuperFizz.new(5).run
# supper          = SuperFizz.new(7).run
# flat            = SuperFizz.new(8).run


# Now we clean up our syntax and put the divide_by methods on one line

class SuperFizz
  attr_reader :num, :result

  def initialize(num)
    @num = num
    @result = ""
  end

  def run
    divide_by_7
    divide_by_3
    divide_by_5
    validate_result
    result
  end

  def divisible_by?(amount)
    num % amount == 0
  end

  def divide_by_7
    result << "Super" if divisible_by?(7)
  end

  def divide_by_3
    result << "Fizz" if divisible_by?(3)
  end

  def divide_by_5
    result << "Buzz" if divisible_by?(5)
  end

  def validate_result
    result << num.to_s if result.empty?
  end

end

# Now we can create a .times do loop to create a list of the outputs for each number,
# up to the number we want, which we specify in front of .times
# This prints out the list of outputs rather than the output for a single number, i.e.
# the initialized argument
# We also moved the puts into this block rather than in our run method above
12.times do |num|
  superfizz = SuperFizz.new(num)
  puts superfizz.run
end
