# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.

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