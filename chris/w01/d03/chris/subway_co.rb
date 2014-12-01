##idea do not use

subway = { 
  :n => ["34th", "N28th", "N23rd", "Union Square", "N8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
}



# subway_trial = subway[keys].index(departure_station)
# puts subway_trial
  

print "What line do you want to depart? (n), (l), (six): "
departure_line = gets.chomp

print "What station do you want to depart? "
departure_station = gets.chomp

print "What line do you want to arrive? (n). (l), (six): "
arrival_line = gets.chomp

print "What station do you want to arrive? "
arrival_station = gets.chomp

# def union (union_sq)

#   if departure_line || arrival_line == "n"
#     subway[:n].index "Union Square" 
#   elsif departure_line == "l"
#     subway[:l].index "Union Square" 
#      elsif departure_line == "six"
#     subway[:six].index "Union Square" 
         
#   end


union_square = subway.keys.each do |key|
 
  puts key
  puts subway[:n].index "Union Square" 
  
#   end

# end




#number_of_stops = subway[:keys]
#(index of Union Square - Departure station) + [(index of union square - arrival station)].abs