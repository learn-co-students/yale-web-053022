require 'pry'
require 'rest-client'
require 'json'



# Get all the titles from this search result and print to the screen

# loop through all items in items array
BASE_URL = "https://www.googleapis.com/books/v1/volumes"

def get_response
  puts "Hello! Please enter your search query:"
  search_query = gets.chomp
  RestClient.get("#{BASE_URL}?q=#{search_query}")
end

def print_response
  # parse the response 
  ruby_hash = JSON.parse(get_response.body)

  # print out all titles
  ruby_hash["items"].each do |item|
    puts item["volumeInfo"]["title"]
  end
end

def run
  print_response
end

while true
  run
end

# binding.pry