

class User
  attr_accessor :name, :bio
  # array of tweets
  def initialize(name, bio)
    @name = name
    @bio = bio
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  # all the tweets that a user has
  def tweets
    Tweet.all.select {|tweet| tweet.user == self }
  end
end
