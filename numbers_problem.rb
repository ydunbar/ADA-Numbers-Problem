# Project v.4 requirements:
# use at least two different types of loops, and an array to hold information
# write a program that does the following:
# Ask the user for the count of numbers.
# Create an array to hold the numbers that the user will input
# Do the following count number of times:
# Ask the user to input a positive integer value
# Save the user input as an integer value into the next location in the array.
# Go through each value in the array and compare each value to the last number entered by the user. Based on the comparison print the following:
# If the value in the array is less than the value of the last number entered, print to the terminal that the value at that index is less than the value at the last index.
# If the value in the array is greater than the value of the last number entered, print to the terminal that the value at that index is greater than the value at the last index.
# If the value in the array is equal to the value of the last number entered, print to the terminal that the value at that index is equal to the value at the last index.
# Print the following three to the terminal:
# The minimum value in the array.
# The maximum value in the array.
# The average of all the elements in the array. Note: The average is calculated as the (the sum of elements) / (the count of all elements).

# Initially empty array to hold numbers
numbers = []
# Array that holds strings describing number order
order = ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th", "10th"]

# Ask the user for the count of numbers
puts "Let's play a numbers game. How many numbers would you like to enter?"
# Store user input in variable, convert to integer
number_count = gets.to_i

# Loop to ask user for numbers, and store them into an array
number_count.times do |num| # num = 0, 1, ..
  # Asks user for number
  puts "Enter the #{order[num]} positive integer:"
  # Converts to integer
  number = gets.to_i
  # Stores number in numbers array
  numbers.push(number)
end

if numbers.length > 1
  # Loop through numbers array and compare numbers
  numbers.each do |num| # num = the numbers in array (not the index)
    # index count (to refer to indices)
    index_count = 0
    # If the value in the array is less than the value of the last number entered,
    # print to the terminal that the value at that index is less than the value at the last index.
    if num < numbers[index_count + 1]
      print "The value at index #{index_count}, #{num} is less than value at the last index, #{numbers[index_count + 1]}."
    # If the value in the array is greater than the value of the last number entered,
    # print to the terminal that the value at that index is greater than the value at the last index.
  elsif num > numbers[index_count + 1]
      print "The value at index #{index_count}, #{num} is more than value at the last index, #{numbers[index_count + 1]}."
    # If the value in the array is equal to the value of the last number entered,
    # print to the terminal that the value at that index is equal to the value at the last index.
  elsif num == numbers[num + 1]
      print "The value at index #{index_count}, #{num} is equal to the value at the last index, #{numbers[index_count + 1]}."
    end
    # Increment index_count
    index_count += 1
end

# Print the minimum value in the array.
if numbers.length == 1
  highest_number = numbers.first
  lowest_number = numbers.first
  print "The minimum value in the array is #{highest_number}. \n
  The maximum value in the array is also #{lowest_number}. \n
  The average value is #{(highest_number + lowest_number)/2} as well."
else
  # Loop through numbers array and compare numbers
  numbers.each do |num| # num = the numbers in array (not the index)
    # index count (to refer to indices)
    index_count = 0
    # update highest number (not sure if this works... also what if numbers are equal?)
    # Other ideas: Remove lower numbers until 1 remains, re-order numbers in numerical order and refer to first/last
    if num < numbers[index_count + 1]
      highest_number = numbers[index_count + 1]
    end
    # Increment index_count
    index_count += 1
end
