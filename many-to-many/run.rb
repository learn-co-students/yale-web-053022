require "pry"
require_relative "models/driver"
require_relative "models/ride"
require_relative "models/passenger"

tim = Passenger.new("Tim", 21)
malcolm = Passenger.new("Malcolm", 40)

spongebob = Driver.new("Spongebob", "Boatmobile")
patrick = Driver.new("Patrick", "Rockmobile")

theater_ride = Ride.new(10, 20, tim, spongebob)
restaurant_ride = Ride.new(5, 10, tim, patrick)
airport_ride = Ride.new(50, 100, malcolm, patrick)

binding.pry
