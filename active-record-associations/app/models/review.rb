class Review < ActiveRecord::Base
  belongs_to :game # gives us the Review#game method
  belongs_to :player # gives us the Review#player method
  # def game
  # end
  # def player
  # end
end