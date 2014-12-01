subways = {
    "n" => {
        stops: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
    },
        "l" => {
        stops: ["1st", "3rd", "Union Square", "6th", "8th"],
    },
    "six" => {
        stops: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Aston"],
    },

} 

all_subways = subways["n"][:stops] << subways["six"][:stops] << subways["l"][:stops] #shovels all the stations into one large array
full_subways = all_subways.flatten.uniq #flatten the large array and finds and find all the unique stops unique stops. without uniq, it was counting extra stops.
alls = ["n", "six", "l"]

puts "What station would you like to get on at?"  #inputs
puts "Possible options include:"
p full_subways
depart_station = gets.strip
puts "What line would you like to get on at?"
puts "Possible options include:"
p alls
depart_line = gets.strip

"What station would you like to get off at?"
puts "Possible options include:"
p full_subways
arrive_station = gets.strip
puts "What line would you like to get off at?"
puts "Possible options include:"
p alls
arrive_line = gets.strip


def number_stops(depart_station,depart_line,arrive_station,arrive_line,subways)
    
    start_index = subways[depart_line][:stops].index(depart_station) #start location

    if depart_line == arrive_line  #if lines are the same
        end_index = subways[arrive_line][:stops].index(arrive_station) #stop location
        numstop = end_index - start_index #differnce between the stops
    else
        to_union = subways[depart_line][:stops].index("Union Square") - subways[depart_line][:stops].index(depart_station) #getting to union square
        from_union = subways[arrive_line][:stops].index(arrive_station) - subways[arrive_line][:stops].index("Union Square")#from union square


        numstop = to_union.abs + from_union.abs #find the differnece between start and union square and add that to the difference between union sq and stop station
    end
end

total_stops = number_stops(depart_station,depart_line,arrive_station,arrive_line,subways) #total stops calls on the method for number of stops

puts "There are #{total_stops} stops from #{depart_station} on the #{depart_line} to #{arrive_station} on the #{arrive_line}." #output statement