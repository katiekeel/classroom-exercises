# 1. Basic puts / gets
#
# Write a simple Ruby program which prompts the user to enter a message, then prints that message to the terminal. For example:
#
# Type your message:
# # (user types "pizza" and presses enter)
# pizza


# puts "Please enter a message."
# input = gets
# puts input


# 2. Basic Branching
#
# Extend your previous program so that if the text the user enters has an even number of letters, it prints “EVEN!”, and if it has an odd number of letters, it prints “ODD!”.
#
#
# puts "Please enter a message."
# input = gets
# input_length = input.length
# if input_length.even? == false
#   puts "EVEN!"
# else
#   puts "ODD!"
# end


# 3. Multi-pronged branching
#
# Write a new program that prompts the user for a message, then, depending on the following conditions, prints an appropriate message:
#
# If the message ends with a consonant, print “CONSONANT!”
# If the message ends with a vowel, print “VOWEL!”
# If the message ends with a “y”, print “DON’T KNOW!”

# puts "INPUT, PLEASE!"
# input = gets.chomp
# if input.end_with?("a", "e", "i", "o", "u")
#   puts "VOWEL!"
# elsif input.end_with?("y")
#   puts "DON'T KNOW!"
# else
#   puts "CONSONANT!"
# end

# 4. Easy Looping
#
# Use a times loop to generate this output:
#
# Line
# Line
# Line
# Line
# Line
#
# 5.times do
#   puts "Line"
# end
#
# 5. Looping with a Condition
#
# Build on your answer from the problem above and add an if/else to generate output like this:
#
# Line is even
# Line is odd
# Line is even
# Line is odd
# Line is even
#
# counter = 0
# while counter < 5
#   if counter.odd?
#     puts "Line is odd"
#   else
#     puts "Line is even"
#   end
#   counter += 1
# end
#
# 6. Three Loops
#
# Generate the output below using three totally separate implementations (times, while and until):
#
# This is my output line 1
# This is my output line 2
# This is my output line 3
# This is my output line 4
# This is my output line 5

# counter = 1
# while counter < 6
#   puts "This is my output line #{counter}"
#   counter +=1
# end
#
# counter = 1
# until counter > 5
#   puts "This is my output line #{counter}"
#   counter += 1
# end

# counter = 1
# 5.times do
#   puts "This is my output line #{counter}"
#   counter +=1
# end
#
# 7. Rando-Guesser
#
# Write two implementations, one with while and one with until that output the following:
#
# (The secret number is 8)
# Guess is 4
# Guess again!
# Guess is 5
# Guess again!
# Guess is 9
# Guess again!
# Guess is 4
# Guess again!
# Guess is 8
# You win!

puts "Guess the secret number, from 1 to 10!"
input = gets
guess = input.to_i
secret_number = 8
while secret_number != guess
  puts "Guess again!"
  break
while secret_number == guess
    puts "You win!"
end
