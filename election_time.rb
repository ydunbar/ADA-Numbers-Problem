# Project Requirements:
# Input: Poll 10 people for their election vote
# Output: Print the total votes cast as well as the winner of the election

# Optional enhancements:
# Handle ties for a winner appropriately
# Handle grammar of vote summary saying vote or votes appropriately
# Handle write in votes
# Consider how to handle more than 10 votes
# Consider how to handle more than 3 candidates
# Refactor your code so that your code is DRY (Don't Repeat Yourself)

puts "Welcome to my election voting program. \n
Election candidates are: Donald Duck, Minnie Mouse, Goofy"

# Array to store votes?
votes = []
# Loop to take user votes
10.times do |i|
  puts "Vote #{i}"
  vote = gets.chomp.capitalize
  votes.push(vote)
end

# Output vote count
puts "ELECTION RESULTS.... \n
Vote Summary: \n"

# count votes for each candidate;
# go though array and look for each candidate instance, and increment their vote count
donald_vote_count = 0
minnie_vote_count = 0
goofy_vote_count = 0

votes.each do |i|
  if [i] == "Donald Duck" || "Donald duck"
    donald_vote_count +=1
  elsif [i] == "Minnie Mouse" || "Minnie mouse"
    minnie_vote_count +=1
  elsif [i] == "Goofy"
    goofy_vote_count +=1
end

if donald_vote_count > 0
  puts "Donald Duck - " + donald_vote_count "vote(s)"
end

if minnie_vote_count > 0
  puts "Minnie Mouse - " + minnie_vote_count "vote(s)"
end

if goofy_vote_count > 0
  puts "Goofy - " + goofy_vote_count "vote(s)"
end

# Output election result
winner = null

if donald_vote_count > minnie_vote_count && donald_vote_count > goofy_vote_count
  winner = "Donald Duck"
elsif minnie_vote_count > donald_vote_count && minnie_vote_count > goofy_vote_count
  winner = "Minnie Mouse"
elsif goofy_vote_count > donald_vote_count && goofy_vote_count > minnie_vote_count
  winner = "Goofy"
end

puts "Winner: " + winner "!"
