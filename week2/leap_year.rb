# Find the next 20 leap years

# Create an empty array for the leap years
leap_years = []

# Create a counter to identify the year we're examining
current_year = 2017

# Iterate over the upcoming years until we have 20 leap years
until leap_years.length == 20
  # Increment the current year by 1 each time we loop
  current_year += 1
    # If the year can be divided by 100, skip it
    if current_year % 100 == 0
      next
    # If the year can be divided by 100 AND 400, it's a leap year
    elsif current_year % 400 == 0 && num % 100 == 0
      leap_years << current_year
    # If the year can be divided by 4, it's a leap year
    elsif current_year % 4 == 0
      leap_years << current_year
    # If the year doesn't meet the two inclusion condtions, skip it
    else
      next
    end
 end

# Print the leap years, sorted ascending
 p leap_years.sort
