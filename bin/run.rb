#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"

def run
  welcome
  def get_input
      character = get_character_from_user
    loop do
      preference = get_preference
      if preference == "films"
        show_character_movies(character)
      elsif preference == "gender"
       puts show_character_gender(character)
      elsif preference == "exit"
        break
      else puts "Input could not be recognised. Please try again.".colorize(:red)
      end
    end
  end
  get_input
end

run
