class Vehicle
  attr_accessor :number_of_wheels

  def initialize(number_of_wheels)
    @number_of_wheels = number_of_wheels
  end

  def ===(another_vehicle)
    self.number_of_wheels == another_vehicle.number_of_wheels
  end
end

four_wheeler = Vehicle.new 4
two_wheeler = Vehicle.new 2

print "Enter number of wheel for vehicle: "
vehicle = Vehicle.new gets.chomp.to_i

puts case vehicle
when two_wheeler
  'Vehicle has the same number of wheels as a two-wheeler!'
when four_wheeler
  'Vehicle has the same number of wheels as a four-wheeler!'
else
  "Don't know of a vehicle with that wheel arrangement!"
end