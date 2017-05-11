# Find sum of first 100 natural numbers, then square that
# Find squares of first 100 natural numbers, then sum those
# Find the difference between squared sum and sum of squares

p sum_of_numbers = (1..100).sum
squared_sum_of_numbers = sum_of_numbers * sum_of_numbers
squared_numbers = []
(1..100).each do |num|
  squared_num = num * num
  squared_numbers << squared_num
end
sum_of_squares = squared_numbers.sum
difference = squared_sum_of_numbers - sum_of_squares
p difference
