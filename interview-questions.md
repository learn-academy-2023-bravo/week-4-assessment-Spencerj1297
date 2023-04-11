# ASSESSMENT 4: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. What is object-oriented programming? How is it different than functional programming?

Your answer: Object-oriented programming is a development structure that forms code and functionality around using objects. This can be seen evidently in the lanuguage Ruby where everthing is essentialy an object. 

Researched answer: a softeware development model that structures design around objects as opposed to functions and logic. An object is data that has unique behavior and its own attributes. 

answers via: https://www.techtarget.com/searchapparchitecture/definition/object-oriented-programming-OOP#:~:text=Object%2Doriented%20programming%20(OOP)%20is%20a%20computer%20programming%20model,has%20unique%20attributes%20and%20behavior.


2. What is the difference between a Float and an Integer in Ruby?

Your answer: In Ruby there are two ways on desplaying a number. Float is the keyword that allows users to utilize decimal points. Integar is the keyword that refers to whole numbers. It will not give decimals and is the same as the number keyword, but integer is for the language Ruby. 

Researched answer: In ruby float is a number that contains the use of decimals. Any number without a decimal is a integer in Ruby. For example the number 24 is a integer, however the number 24.0 is a float. 

answers via: https://www.digitalocean.com/community/tutorials/understanding-data-types-in-ruby


3. Ruby has an implicit return. What does that mean?

Your answer: The language Ruby is written in a way that is simple to read. Implicit return is the languages way of returning the last line of code within a method without using any keywords. 

Researched answer: Ruby will return the last line of a methods code. This is called the implicit return. In the example below we have a method called additon that has one parameter. inside the method we have a new variable called total which is holding num + num. On the next line we have 'total' which will automaticaly be the return because of Ruby implicit return. 

    def addition (num)
        let total = num + num 
        total
    end

answer via: https://www.learnhowtoprogram.com/ruby-and-rails/basic-ruby/defining-methods-in-ruby#:~:text=In%20Ruby%2C%20we%20can%20take,line%20before%20the%20end%20keyword.
 

4. What is a block in Ruby?

Your answer: A Ruby block is the flow of code from a parent/super method to its children. The super will have generic values that will be applicable to all children under that super.

Researched answer: In Ruby blocks are bits of code inside of curly braces that are anonymous and can take input from arguments and return a value. 
ex of structure: They can be executed by using the yeild key-word.  

def yeild_block

    puts 'Method'
    yeild

    put 'Method'
    yeild
end
yeild_block{

}



5. How do you extract a value in a Ruby hash?

Your answer: To extract a value in a Ruby hash we need to return or print the methods key-value pair. A key value pair is calling on the object and using . notation to gather the value within. 

Researched answer: In ruby, hashes are groupings of key-value pairs. To get the value inside of a hash we can use bracket notation attached to the hash. See example below.

pet = {
    'name' => 'luna'
    'type' => 'cat'
    'breed' => 'american short-hair'
}

p pet['name'] // => luna

answer via: https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-arrays-and-hashes-u/cheatsheet

## Looking Ahead: Terms for Next Week

1. RSpec: A testing tool written in the language Ruby to test Ruby code. It is framework that is behavior-driven(BDD). BDD is a software development process that promotes the collaboration with developers, QA, and the customer. 
answer via: https://en.wikipedia.org/wiki/Behavior-driven_development
        
2. Test-driven development: A software development process that depends upon testing before the software is finished and deployed. This also includes the tracking of software development by continual testing against all test cases. 
answer via: https://en.wikipedia.org/wiki/Test-driven_development

3. PostgreSQL: A free open-source database manager will a focus on extensibility and SQL compliance.
answer via: https://en.wikipedia.org/wiki/PostgreSQL

4. CRUD: Create, read, update, and delete are the four objectives of persistent storage. CRUD can be used to describe the process by which UI is viewed, searched, adn changed
answer via: https://en.wikipedia.org/wiki/Create,_read,_update_and_delete

5. HTTP: Hypertext Transfer Protocol is a protocal for gathering resources. An example of the resources gathered would be HTML documnets. HTTP is the core of data exchange on the internet. A diagram of the intereaction between user and server can be found at the given link below. ⬇️

https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview

