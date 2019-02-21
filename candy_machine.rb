# Requirements
# Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
# Display all candy options and their costs (even if the user cannot afford the candy)
# Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
# [Optional] Handle when the buyer enters "C" or "c" so that it works as expected
# [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection

# store candy cost values
twix = $0.65
chips = $0.50
nb = $0.75
pbc = $0.65
jfg = $0.55

# show prompt to user
Puts "Welcome to Ada Developers Academy's Computer Candy Machine!
(All candy provided is virtual.) \n
How much money do ya got?"

# store user input in variable
money = gets.chomp
puts + money ", that's all? \n
Well, lemme tell ya what we got here. \n
A $0.65 Twix \n
B $0.50 Chips \n
C $0.75 Nutter Butter \n
D $0.65 Peanut Butter Cup \n
E $0.55 Juicy Fruit Gum \n
So, What'll ya have?"
candy = gets.chomp.downcase

# assign candy cost based on user selection
if candy == a
  candy_cost = twix
elsif candy == b
  candy_cost = chips
elsif candy == c
  candy_cost = nb
elsif candy == d
  candy_cost = pbc
elsif candy == e
  candy_cost = jfg
end

# logic for responses
if money >= candy_cost
  puts "Thanks for purchasing candy through us. \n
  Please take your candy, and your #{money - candy_cost} change!"
else
  puts "You're broke. Take your #{money} and go elsewhere."
end
