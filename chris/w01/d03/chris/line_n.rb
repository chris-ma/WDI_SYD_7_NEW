##idea do not use

nline = ["34th", "n28th", "n23rd", "union square", "n8th"]
lline = ["L8th", "6th", "Union Square", "3rd", "1st"]

puts "What station do you want to get on?"
get_on_station = gets.chomp.downcase

puts "What station do you want to get off?"
get_off_station = gets.chomp.downcase

board_station_index = nline.index(get_on_station)

depart_station_index = nline.index(get_off_station)

# def number_of_stops(stops)
stops = depart_station_index - board_station_index  
# end
puts stops










