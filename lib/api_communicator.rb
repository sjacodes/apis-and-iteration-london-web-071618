require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character)
  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  character_hash = JSON.parse(all_characters)
  character_data = character_hash["results"].find {|data| data["name"] === character}
  characters_film_urls = character_data["films"]
  film_names = characters_film_urls.map {|data| JSON.parse(RestClient.get(data))}
end

def parse_character_movies(films_hash)
  new_array = []
  films_hash.each.with_index do |film, i|
    puts "#{i + 1}" + film['title'].colorize(:blue)
  end
  return new_array
end

def show_character_movies(character)
  films_hash = get_character_movies_from_api(character)
  parse_character_movies(films_hash)
end

def show_character_gender(character)
  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  character_hash = JSON.parse(all_characters)
  character_data = character_hash["results"].find {|data| data["name"] === character}
  characters_gender = character_data["gender"]
  
end
