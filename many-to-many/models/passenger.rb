class Passenger
  # passenger -< rides

  def initialize(name, age)  
    @name = name
    @age = age
  end

  # has many rides
  # Ride
  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end


  # has many drivers through rides
  # Returns all drivers this passenger is associated with
  def drivers
    # ??
    rides.collect { |ride| ride.driver }.uniq
  end


end