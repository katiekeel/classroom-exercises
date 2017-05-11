# Reverse the letters in "cat" without using the .reverse method

word = "cat"
cat_reverse = []
cat_reverse << word[2]
cat_reverse << word[1]
cat_reverse << word[0]
cat_reverse = cat_reverse.join
p cat_reverse
