#require_relative "person"
require_relative "building"
require_relative "apartment"

building_one_apartments = [
  Apartment.new(250.0, true, 1),
  Apartment.new(250.0, false, 1),
  Apartment.new(450.0, false, 1)
]

building_two_apartments = [
  Apartment.new(250.0, true, 1),
  Apartment.new(250.0, false, 1),
  Apartment.new(450.0, false, 1)
]

buildings = [
Building.new("old","123 main st",building_one_apartments),
Building.new("old","123 main st",building_two_apartments)]

puts buildings


def building_list (buildings)
  buildings.each do |building|
  puts "#{buildings.index(building)}: #{building}"
  end 
end

building = buildings[]

def list_apartments(buildings)
  buildings.each do |building|
    building.apartments.each do |apartment|
      puts apartment
    end
  end
end



puts "q for quit, lb for building list la for apartment list"

puts "(q)quit, (lb)list buildings, (la)list all apartments"

response = gets.strip

while response != 'q'
  case response
  when 'lb'
    list_buildings(buildings)
  when 'la'
    list_apartments(buildings)
  else
    puts "That menu item doesn't exist"
  end
  response = gets.strip
end