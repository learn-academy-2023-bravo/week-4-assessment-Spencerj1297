# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.
# Puesdo C:
# define a new method called even_odd(snake case)
# Give the method one parameter so the given varibales can be used as arguments later.
# Use an if, elsif, else statement for the logic. 
# The if conditional will use the parameter num and check if the remainder (%) by 2 is eqaul to 0.
# This will return true for even numbers. Add a statement to reflect that.
# The elsif will be the same as the if but change the equals to not equal using the '!' operator. Add a statement to reflect this.
# Use else as a catch all for input error. 

reposts1 = 7
# Expected output: '7 is odd'
reposts2 = 42
# Expected output: '42 is even'
reposts3 = 221
# Expected output: '221 is odd'

def even_odd num
    if num % 2 == 0
        "This is an even number"
    elsif num % 2 != 0 
        "This is an odd number"
    else 
        "This aint even a number dude"
    end
end

# p even_odd reposts1
# # "This is an odd number"
# p even_odd reposts2
# # "This is an even number"
# p even_odd reposts3
# # "This is an odd number"

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. 
# HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

# Puesdo C:
# Define a new method called vowel_remover
# Give the method one parameter 'string' to match the given inputs
# In the method create a new variable called new_string. Inside store the string parameter with .downcase attached to make all letters the same in the string.
# Also ad the .delete method to get rid of any vowels within that string.
# return the new_string variable with .split and .map attached. This will first split the string into individual letters and .map will iterate through each letter as an array.
# Then use &:capitalize as the short hand to capitalize the words.
# Last use .join to pull the array of letters back together as strings. 

beatles_album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
beatles_album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
beatles_album3 = 'Abbey Road'
# Expected output: 'bby Rd'
def vowel_remover string
   new_string = string.downcase.delete('aeiou')
   new_string.split.map(&:capitalize).join(' ')
end
# p vowel_remover beatles_album1
# # "Rbbr Sl"
# p vowel_remover beatles_album2
# # "Sgt Pppr"
# p vowel_remover beatles_album3
# # "Bby Rd"

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.
# Puesdo C:
# Create the method palindrome_check. Give this method one parameter of 'string' to match the data of the input.
# In the method create a new variable called lower_case that will have the current string plus .downcase stored inside. 
# Since the lower_case variable now has the strings all in lower case inside, use it in an if, elsif, else statement.
#  Set the if conditional to lower_case == lower_case.reverse
# If this is true the statement will say "#{string} is a palindrome"
#  Set the elsif conditional to the same but change == to != 
# If this is true the statement will say "#{string} is not a palindrome"
# use else as a catch all for user input. 


palindrome_tester1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_tester2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_tester3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'

def palindrome_check string
    lower_case = string.downcase
    if lower_case == lower_case.reverse
        "#{string} is a palindrome"
    elsif lower_case != lower_case.reverse
        "#{string} is not a palindrome"
    else 
        'Something went wrong... try again.'
    end
end

# p palindrome_check palindrome_tester1
# "Racecar is a palindrome"
# p palindrome_check palindrome_tester2
# "LEARN is not a palindrome"
# p palindrome_check palindrome_tester3"Rotator is a palindrome"