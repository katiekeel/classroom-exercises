# # Here we create the class PizzaOven
# class PizzaOven
#
# end
#
# # Here we create a new instance, oven, of PizzaOven
# oven = PizzaOven.new
# # Here we call oven inside a string, which will return the instance ID
# puts "cookin pizza in the oven: #{oven}"

# # Here we create the class PizzaOven
# class PizzaOven
#   # Here we define the method cook
#   def cook
#     # This method, if called, is going to return an error - oven, which we still use
#     # in the string, is now called in a method instead of in the global scope as before
#    puts "cookin pizza in the oven: #{oven}"
#   end
# end
#
#
# oven = PizzaOven.new
# # Now when we call cook on oven, it returns an error
# oven.cook

#
# class PizzaOven
#   # Here we define cook with self, which will refer to whatever object the
#   # method is being called on
#   def cook
#     puts "cookin pizza in the oven: #{self}"
#   end
# end
#
# oven = PizzaOven.new
# # Here we call cook on oven - since cook is defined with self, it will return
# # the string from cook plus its own ID, which is an instance of PizzaOven
# oven.cook

# class PizzaOven
#   # Here we define cook to take the arguments temp and crust_type
#   def cook(temp, crust_type)
#     # cook then calls them with string interpolation
#     puts "mmm, mmm. cookin #{crust_type} pizza in the oven at #{temp}"
#   end
#
#   # Here we define the method temp, which happens to have the same name as an argument for cook
#   def temp
#     "400 degrees F"
#   end
#
#   # The method crust_type also has the same name as an argument for cook
#   def crust_type
#     "New York Style"
#   end
# end
#
# oven = PizzaOven.new
# # Here we call cook on oven with temp and crust_type arguments, which will return a string using those
# oven.cook("100 degrees F", "Digiorno")
#
# class PizzaOven
#   def cook(temp, crust_type)
#     puts "mmm, mmm. cookin #{crust_type} pizza in the oven at #{temp}"
#   end
#
#   def temp
#     "400 degrees F"
#   end
#
#   def crust_type
#     "New York Style"
#   end
# end
#
# oven = PizzaOven.new
# # Now, with the same class/method setup as before, we call cook on oven using
# # the actual methods as the arguments - this will return the strings the methods
# # contain.
#
# # So we see that when a method we're calling has arguments with the same name
# # as other methods within the class, the passed-in arguments take precedence,
# # and the methods-as-arguments can still be called
# oven.cook(oven.temp, oven.crust_type)


# class PizzaOven
#   # Here we define default argument values for a method
#   # This allows us to call a method with no arguments, yet still use arguments if we want when we call it elsewhere
#   def cook(temp = "425 F", crust_type = "Deep Dish")
#     puts "mmm, mmm. cookin #{crust_type} pizza in the oven at #{temp}"
#   end
#
#   def temp
#     "400 degrees F"
#   end
#
#   def crust_type
#     "New Haven Style"
#   end
# end
#
# oven = PizzaOven.new
# # Now we can call cook on oven with no args - it will use 425F and deep dish, since those are the defaults as defined above
# oven.cook
# # We can also call cook WITH args - in this case the temp and crust_type methods themselves
# oven.cook(oven.temp, oven.crust_type)
# # Finally, we can still call cook with args that we specify
# oven.cook("over 9000 degrees", "margherita")


class PizzaOven
  # Here we define cook with default arguments of instancec methods that we call self on
  def cook(temp = self.temp, crust_type = self.crust_type)
    puts "mmm, mmm. cookin #{crust_type} pizza in the oven at #{temp}"
  end

  def temp
    "400 degrees F"
  end

  def crust_type
    "New Haven Style"
  end
end

oven = PizzaOven.new
# When we call cook on oven with no arguments, it uses the default args, which are our
# instance methods with self
oven.cook
# When we call cook on oven with the args as the actual instance methods, it produces the same
# output as above
oven.cook(oven.temp, oven.crust_type)
