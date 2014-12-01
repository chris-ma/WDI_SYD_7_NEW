#require_relative "person"
require_relative "building"
#require_relative "apartment"

buildings = [
Building.new("old","123 main st","apartment")

  ]

puts buildings


def building_list (buildings)
  buildings.each do |building|
  puts "#{buildings.index(building)}: #{building}"
  end 
end


puts "q for quit, lb for list"

response = gets.strip

while response != 'q'
  case response
  when "lb"
    building_list
  when "la"
    advanced_calc 
  else 
    puts "incorrect"
  response = gets.strip
  end
########################################################################

# def search
#     p "What would you like to search for?"
#     p 'a : name'
#     p 'b : age'
#     p 'c : gender'
#     p 'd : style'
#     p 'e : address'
#     p 'f : apartment'
#     p 'g : price'
#     p 'h : occupied'
#     p 'i : renters'
#     p 'j : go back to listings'

#     criteria = gets.chomp

# case criteria
# when "a"
#   p "#{name}"
# end
# when "b"
#   p "#{age}"
# end
# when "c"
#   p "#{gender}"
# end
# when "d"
#   p "#{style}"
# end
# when "e"
#   p "#{address}"
# end
# when "f"
#   p "#{apartment}"
# end
# when "g"
#   p "#{price}"
# end
# when "h"
#   p "#{occupied}"
# end
# when "i"
#   p "#{renters}"
# end
# when "j"
#  listings
# end

# search

# end




# def data_entry

# p'please enter your name:'
# name_entered = gets.chomp 
# p'please enter your age:'
# age_entered = gets.chomp 
# p'please enter your gender:'
# gender_entered = gets.chomp
# p'please enter your style:'
# style_entered = gets.chomp
# p'please enter your address:'
# address_entered = gets.chomp
# p'please enter your apartment:'
# apartment_entered = gets.chomp
# p'please enter your rental price:'
# price_entered = gets.chomp
# p'please enter type in unoccupied/occupied:'
# occupied_entered = gets.chomp
# p'please enter number of renters:'
# renters_entered = gets.chomp

########################################################################

#     case data_sets
#       p 'choose what data you want to input:'
#       p 'a : personal'
#       p 'b : apartment'
#       p 'c : building'
# when "a"
  
#       p "Please enter in your personal details: (name,age,gender)"
#     personal_data= gets.chomp
# data_point = personal_data.map do |personal_data|  
# personal_parts = personal_data.split (" ,")
# end
# when "b"
#       p "Please enter in your apartment details: (name,age,gender)"
# personal_data= gets.chomp
# data_point = personal_data.map do |personal_data|  
# personal_parts = personal_data.split (" ,")

# when "c"
#         p "Please enter in your building details: (name,age,gender)"
# personal_data= gets.chomp
# data_point = personal_data.map do |personal_data|  
# personal_parts = personal_data.split (" ,")
  
# end
# puts
# listings

########################################################################
# end

# def listings

#     p "Do you want to?"
#     p 'a : Search'
#     p 'b : Enter in data'

#     choice = gets.chomp

#   case choice

#     when "a"
      
#       choice = search
#     end

#     when "b"
      
#       choice = data_entry
#     end
#   else
#     choice = listings
#   end

# end

# listings



######################################################################### :name ["james", "jill", ]
# :age []
# :gender ["m", "f"]



# #q1 
# build = Building.new("modern","123 abc st","apartment" )
# #q2
# apart = Apartment.new(400,"occupied",2 )
# #q3
# super is_occupied == "unoccupied"
# puts "#{address}"
# #q4
# super
# puts "#{address}#{style}#{price}#{apartment}"
# #q5
# apply = is_occupied == "unoccupied" && budget <= price
# #q6
# #q7
# #q8

# pers = Person.new("Chris",30,"m" )
# pers.show_person
# build.show_building
# apart.show_apartment
