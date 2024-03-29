###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

puts "Welcome to the Secret Number Game!"

# Hello, I am Keith and writing a ruby program!

first_name = "Keith"
last_name = "Leung"

puts "Created by " + first_name + " " + last_name

puts "What is your name?"

player_name = gets.chomp

puts "What is your last name?"

player_last = gets.chomp

guesses_left = 3

set_of_numbers = [1,2,3,4,5,6,7,8,9,10]

secret_number = rand(set_of_numbers.count)

messages = {:win => "You have guessed the secret number", :lose => "You have no more guesses remaining. The correct number was #{secret_number}", :too_high => "You have guessed too high! Guess lower next try!", :too_low => "You have guessed too low! Guess higher next try!"}

loop do 
puts "You have #{guesses_left} guesses left"
puts "Please guess the secret number"
secret_guess = gets.chomp.to_i
	if secret_guess == secret_number
		puts messages[:win]
		guesses_left = 0
	else
		if secret_guess >= secret_number
			puts messages[:too_high]
		else
			if (guesses_left - 1) == 0
			puts messages[:lose]
			end
		end
		if secret_guess <= secret_number
			puts messages[:too_low]
		else
			if (guesses_left - 1) == 0
				puts messages[:lose]
			end
		end
	end
	guesses_left -= 1
	break if guesses_left < 1
end

