require "person"
require "building"
require "apartment"


def listings

    p "what listing are you after?"
    p '1 : Apartments available'
    p '2 : Apartments in a building'
    p '3 : Unoccupied apartments in a building'
    p '4 : location'
    p '5 : style'
    p '6 : price'
    p "7 : Quit\n"
    p '--> '
    gets.chomp

    case 

    when "1"
      p 
    end
    when "2"
      p 
    end
    when "3"
      p 
    end
    when "4"
     p  
    end
    when "5"
     p  
    end
    when "6"
      p 
    end
    when "7"
     p  
    end

end



# :name ["james", "jill", ]
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
