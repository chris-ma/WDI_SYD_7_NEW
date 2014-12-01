class Car
  attr_accessor :max_speed, :color, :seating_material, :type,
def method_name

  puts "Your model has:"
  puts "max_speed: #{self.max_speed}"
  puts "Your color: #{self.color}"
  puts "Your seating_material:#{self.seating_material}"
  
end

end

class Ferrari < Car


  
  end

class Bmw < Car


end

class VW < Car
  


end




vehicle = Car.new 
vehicle.max_speed = 500
vehicle.color = "brown"
vehicle.seating_material = "Velore"
vehicle.type = "hatch"



vehicle.method_name
