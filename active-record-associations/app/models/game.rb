class Game < ActiveRecord::Base
  has_many :reviews # gives us the Game#reviews method
  has_many :players, through: :reviews
  # # reviews?
  # def reviews
  #   Review.all.select { |review| review.game == self}
  # end

  # # has many through
  # def players
  #   # ??
  #   reviews.map{|r| r.player }
  # end
end
