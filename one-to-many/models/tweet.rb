class Tweet
  # delete, created
  # message, comments
  # is owned by a user
  # i.e., belongs to a user
  attr_accessor :message, :user

  @@all = []
  def initialize(message, user)
    @message = message
    @user = user

    @@all << self
  end

  def self.all
    @@all
  end

  def username
    self.user.name
  end

end

