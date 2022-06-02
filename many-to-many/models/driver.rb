class Driver
  def initialize(name, car)
    @name = name
    @car = car
  end

  # has many rides
  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  # has many passengers through rides
  def passengers
    rides.collect { |ride| ride.passenger }.uniq
  end
  
end