class Ride
  attr_reader :driver, :passenger
  @@all = []

  def initialize(distance, cost, passenger, driver)
    @distance = distance
    @cost = cost

    # this ride belongs to a passenger
    @passenger = passenger

    # this ride belongs to a driver
    @driver = driver

    @@all << self
  end

  def self.all
    @@all
  end

end