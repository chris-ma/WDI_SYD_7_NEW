module Shelter
# Define Animal as a class
require_relative = "animal"
require_relative = "client"
  
  class Shelter

   def relationship

    Animal.new("Fido",2,"male","dog" )


   end

puts "a  |  list animals" 
puts "c  | list clients"
puts "q  |  quit"

      response = gets.strip
   while response != 'q'
        case response
        when 'a'
          list_animals(buildings)
        when 'c'
          list_clients(buildings)
        
        else
          puts "Please type in  'a' for animals, 'c' for clients or 'q' for quit"
        end
        response = gets.strip
end
end
