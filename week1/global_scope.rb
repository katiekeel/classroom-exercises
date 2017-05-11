# These variables are in global scope
x = 10
puts "x is #{x}"
x += 20
puts "x is #{x}"

# This method creates its own local scope
def print_doubled_value(x)
  # If we redefined x within this argument, it would use that x instead of the
  # global x
   puts "double the value #{x} is #{x * 2}"
 end

# Here we call the method with the global variable x as an argument, allowing
# us to manipulate the global variable with our own argument
 print_doubled_value(x)

# Here we create another global variable and call the global variable y as the
# argument
y = 27
print_doubled_value(y)




# Here we redefine print_doubled_value
# The argument for the method is named x - this name is arbitrary and unrelated to the global x
# This x only changes within the context of the method
def print_doubled_value(x)
  orig = x
  x = x * 2
  puts "double the value #{orig} is #{x}"
  puts "inner x is now: #{x}"
end

# Here we call the new print_doubled_value with the method-manipulated x as its arg
print_doubled_value(x)
# Here we say that the global x from above remains 30 outside of the method
puts "outer x is still: #{x}"





# Here we define the global variables a and b
a = 4
b = 12
# We created a method with x as its argument
def combine_variables(x)
  puts "inner x is: #{x}"
  # This line doesn't work - because the method doesn't have b as an argument, it doesn't
  # know about b, and it can't use b
  # puts "and outer b is: #{b}"
end
# Here we call the method with global variable a as the argument - a replaces x in the method above, returning 4
combine_variables(a)



def combine_variables(x)
  puts "inner x is: #{x}"
  puts "and outer b is: #{b}"
end

# Here we define another new method, b, that returns 12
# b, as an instance method, can be called like a variable in the method above
# Methods knows about other methods' variables - they're in the same scope
# So our method directly above now knows about b and can use it

def b
  12
end

# Here we define a and use it as the argument for our method above
# a will replace x in the method output
# b will also now function in the method output
a = 4
combine_variables(a)


# Here we call combine variables, which now has b defined directly within itself
# instead of a sister method - this definition will take precedence over definitions within
# other methods after it is created

def combine_variables(x)
  # We call the global variable a as the argument below, which replaces x and outputs 4
  puts "inner x is: #{x}"
  # We call b, which is still defined in the previous sister method as 12
  puts "and outer b is: #{b}"
  # Now w redefine b within this method
  b = "pizza"
  # This line outputs with the new definition of b
  puts "but now b is: #{b}"
end
combine_variables(a)



# Here we define the global variables ingredients and method
ingredients = ["flour", "water", "yeast", "salt"]
action = "measure"

# Here we define the method unit
def unit
  ["teaspoon", "cup", "pinch"].sample
end

# Here we iterate over ingredients, which knows about the global variable action and the method/variable unit
# This is due to the ability of blocks to create a "closure," which "closes over"
# those variables and allows them to be referenced from the inner scope of the block
# Finally, since we're iterating over ingredients, the block supplies its own value for ingredient each time
ingredients.each do |ingredient|
  puts "#{action} one #{unit} #{ingredient}"
end




# Here we define the global variables new_ingredients, temperature, and action
new_ingredients = ["banana", "chocolate chips"]
temperature = 375
action = "bake"

# Here we iterate over new_ingredients
new_ingredients.each do |ingredient|
  # We redefine action within the block, which will use the new definition
  action = "mix"
  puts "#{action} the #{ingredient} at #{temperature} degrees"
end

# And now when we call action outside of the block, it has the new definition
# Because the block closure allows us to read AND redefine global variables, we
# need to be careful about naming variables and parameters within blocks
puts action
