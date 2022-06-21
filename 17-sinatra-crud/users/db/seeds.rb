User.destroy_all

# Create a bunch of fake users

10.times do
  User.create(name: Faker::Name.name, age: rand(1..100))
end

User.create(name: "Joan Purdy", age: rand(1..100))
