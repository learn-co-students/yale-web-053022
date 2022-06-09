puts "Destroying all drivers"
Driver.destroy_all

puts "Create drivers"

Driver.create(name: "Michelle", car_year: 10, car_model: "Mazda cx5")
Driver.create(name: "Pranik", car_year: 13, car_model: "Ferrari")
Driver.create(name: "Ekow", car_year: 14, car_model: "Honda Accord")
Driver.create(name: "Anh", car_year: 19, car_model: "Tesla")

# let's save some keystrokes!
Driver.create([
  { name: "Leslie", car_year: 10, car_model: "Mazda cx5" },
  { name: "Doe", car_year: 20, car_model: "Mazda cx5" },
  { name: "Dani", car_year: 40, car_model: "Mazda cx9" },
  { name: "Lindsay", car_year: 50, car_model: "Mazda cx3" },
  { name: "Jeff", car_year: 60, car_model: "Hyndai" },
])

puts "Done creating drivers!"
