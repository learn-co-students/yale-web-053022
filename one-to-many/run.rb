require 'pry'
require_relative "models/tweet.rb"
require_relative "models/user.rb"


u1 = User.new("coffee_dad", "a common dad who loves coffee")
u1.post_tweet("hello")
u1.post_tweet("currently drinking coffee")
u1.post_tweet("currently drinking TEA >:)")
u1.post_tweet("no longer like coffee, switched to tea")

u1.tweets
binding.pry
# u2 = User.new("michelleRios", "amazing instructor who loves Raffy")
# u3 = User.new("secret_lizard", "infiltrating a government near you")
# u4 = User.new("doemahamud", "chill guy (:")
# u5 = User.new("kanyewest", ".")
