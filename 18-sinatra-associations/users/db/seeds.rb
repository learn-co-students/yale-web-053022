User.destroy_all

# Create a bunch of fake users

10.times do
  User.create(name: Faker::Name.name, age: rand(1..100))
end

jp = User.create(name: "Joan Purdy", age: rand(1..100))

user_ids = User.ids.sample(2)
user_ids << jp.id

puts "Users with recipes:"
puts user_ids

50.times do
  Recipe.create(
    title: Faker::Food.dish, 
    duration: rand(1..120),
    user_id: user_ids.sample
  )
end
