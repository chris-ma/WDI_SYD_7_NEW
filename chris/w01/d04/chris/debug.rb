

##require "pry"



class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def initialize(color, make, model,year,top_speed)
    self.color = color
    self.make = make
    self.model = model
    self.year = year
    self.top_speed = top_speed
  end

def print_car (the_car)
  
  puts "This is a car:"
  puts " color: #{jag_e.color}"
  puts " make: #{jag_e.make}"
  puts " model: #{jag_e.model}"
  puts " year: #{jag_e.year}"
  puts " top_speed: #{jag_e.top_speed}"
end

end

jag_e = Car.new("green","jaguar","E-type",1985,234)

##binding.pry

jag_e.print
