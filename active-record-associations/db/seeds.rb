require 'faker'
# Make a bunch of players

Game.destroy_all
Review.destroy_all
Player.destroy_all

50.times do
  Game.create(
    title:    Faker::Game.title,
    genre:    Faker::Game.genre, 
    platform: Faker::Game.platform,
    price:    Faker::Number.decimal(l_digits: 2)
  )
end

50.times do
  Player.create(
    name: Faker::Name.name
  )
end

random_game_id = Game.ids.sample
random_player_id = Player.ids.sample

3.times do

  Review.create(
    description: Faker::Restaurant.review,
    rating: rand(0..10),
    game_id: random_game_id,
    player_id: random_player_id # has to be different
  )
  puts random_player_id += 1
end

