require "rest-client"
require "json"
require "pry"


puts "Hello World!"
puts "brb, gonna go sleep for a sec"
# sleep(5)

puts "What a nice cat nap that was!"

response = RestClient.get("https://randomfox.ca/floof/")
binding.pry
