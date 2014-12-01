

class Person
attr_accessor :name
end


class Car
  #defining attributes
  attr_accessor :color, :make, :model, :year, :top_speed #attr_accessor- access the attributes

  def print_car (the_car)
  
  puts "This is a car:"
  puts " color: #{self.color}" #self- an *instance* code from ruby to pul attributes in class blueprint of the behaviour
  puts " make: #{self.make}"
  puts " model: #{self.model}"
  puts " year: #{self.year}"
  puts " top_speed: #{self.top_speed}"
  end
end

jag_e = Car.new #my_class- reference point/identifier .new is a method
jag_e.color = "Green"
jag_e.make = "jaguar"
jag_e.model = "E-type"
jag_e.year = 1959
jag_e.top_speed = 241


jag_e.print




# def print_car (the_car)
  
#   puts "This is a car:"
#   puts " color: #{jag_e.color}"
#   puts " make: #{jag_e.make}"
#   puts " model: #{jag_e.model}"
#   puts " year: #{jag_e.year}"
#   puts " top_speed: #{jag_e.top_speed}"
# end



# print_car(jag_e)