require 'colorize'


def welcome
  puts "Welcome".colorize(:red)
end

def get_character_from_user
  puts "Please enter a character".colorize(:red)
  gets.chomp
  # use gets to capture the user's input. This method should return that input, downcased.
end


def get_preference
  puts "What would you like to know? Type 'films', 'gender' or type exit to leave the program".colorize(:red)
  gets.chomp
end
