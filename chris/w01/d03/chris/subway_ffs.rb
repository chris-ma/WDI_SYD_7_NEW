

subway = { 
  :n => ["34th", "N28th", "N23rd", "Union Square", "N8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
}


puts "What line do you want to depart? (n), (l), (six):"
depart_line = gets.chomp

case depart_line
  when "n"
  puts " Pick a station to depart: 34th, N28th, N23rd, Union Square, N8th "
  depart_station = gets.chomp
  when "l"
  puts "Pick a station to depart: 8th, 6th, Union Square, 3rd, 1st "
  depart_station = gets.chomp 
when "six"
  puts "Pick a station to depart: Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place "
  depart_station = gets.chomp 
end 

puts "What line do you want to arrive? (n), (l), (six):"
arrive_line = gets.chomp

case arrive_line
when "n"
  puts " Pick a station to arrive: 34th, N28th, N23rd, Union Square, N8th "
  depart_station = gets.chomp
when "l"
  puts "Pick a station to arrive: 8th, 6th, Union Square, 3rd, 1st "
  depart_station = gets.chomp 
when "six"
  puts "Pick a station to arrive: Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place "
  depart_station = gets.chomp 
end


def journey 
  to_union = subway[depart_station].fetch(depart_line)  ##needs to pull the right union square based on line selected
  from_union = subway[arrive_station].fetch(arrive_line)
#going to union
  union = to_union.index("Union Square")
  depart = to_union.index(depart_station)
  journey1 = (union.to_i - depart.to_i).abs
#union to destination
  union2 = from_union.index("Union Square")
  arrive = from_union.index(end_stop)
  journey2 = (union2.to_i - arrive.to_i).abs

  number = journey1 + journey2

end

journey


puts "Your trip will be #{number} stops"
