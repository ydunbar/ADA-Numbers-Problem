# Project Requirements:
# Create a MadLib program that accepts input from the user and outputs a completed MadLib
# Use up to ten different parts of speech in order to fill in your MadLib
# Output should consist of a paragraph of output that has the user’s input substituted into the MadLib, we have provided an example run, but your MadLib program should be unique to you
# Your code should use comments throughout to explain the code, reuse at least one word, and ask for at least 1 number
# Explore Ruby's built in methods for String like capitalize, downcase, upcase

# Prints prompts to enter parts of speech, and stores user's input into variables (without \n characters)
prints "Welcome to my MadLib game!"
prints "\n Please enter the following:"
puts "\n Noun (plural):"
nouns = gets.chomp
puts "\n Place:"
# Capitalizes place
place = gets.chomp.capitalize
puts "\n Noun:"
noun = gets.chomp.downcase
puts "\n Noun (plural):"
nouns2 = gets.chomp
puts "\n Noun (plural):"
nouns3 = gets.chomp
puts "\n Adjective:"
adjective = gets.chomp
puts "\n Verb:"
verb = gets.chomp
puts "\n Number:"
# Converts number to string so it can be placed into MadLib
number = gets.to_s
puts "\n Adjective:"
adjective2 = gets.chomp
puts "\n Body Part:"
bodyPart = gets.chomp
puts "\n Verb:"
verb2 = gets.chomp

# Prints story with user's input (by referencing variables)
prints "Romeo and Juliet: Prologue \n

Two " + nouns ", both alike in dignity, \n
In fair " + place ", where we lay our scene, \n
From ancient " + noun " break to new mutiny, \n
Where civil blood makes civil hands unclean. \n
From forth the fatal loins of these two foes \n
A pair of star-cross`d " + nouns2 " take their life; \n
Whole misadventured piteous overthrows \n
Do with their death bury their " + nouns3 "` strife. \n
The fearful passage of their " + adjective " love, \n
And the continuance of their " + nouns3 "` rage, \n
Which, but their children`s end, nought could " + verb ", \n
Is now the " + number " hours` traffic of our stage; \n
The which if you with " + adjective2 " " + bodyPart " attend, \n
What here shall " + verb2 ", our toil shall strive to mend. \n "
