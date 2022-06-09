require 'pry'

class Car
  self
  attr_accessor :num_of_seats, :year

  @@cars = [] 
  # instance variable 
  # num of seats (single seater, sedan, SUV)
  def initialize(num_of_seats, year)
    @num_of_seats = num_of_seats
    @year = year

    @@cars << self
  end

  # class variable
  # num of wheels 
  @@num_of_wheels = 4

  def self.num_of_wheels
    self # => class Car
    @@num_of_wheels
  end

  def self.num_of_wheels=(num)
    @@num_of_wheels = num
  end

  def self.all
    @@cars
  end

  def self.total
    self.all.count
  end
  

end

coupe = Car.new(2, 2017)
sedan = Car.new(4, 2020)
sedan2 = Car.new(4, 2020)
sedan3 = Car.new(4, 2020)
sedan4 = Car.new(4, 2020)
sedan5 = Car.new(4, 2020)

binding.pry


# What's the difference between a local variable, an instance variable, and a class variable?
# local: bound to a method
  # only defined/used within a particular scope (method, if, loop, etc)
# instance:
  # within the instance of a class
# class: 
  # accessible to all instances

# Main difference is scope