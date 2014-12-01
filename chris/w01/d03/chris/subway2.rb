#idea do not use

:nline1 => ["34th", "N28th", "N23rd", "Union Square"]
:nline2 => ["Union Square", "N8th"]
:Lline1 => ["L8th", "6th", "Union Square"]
:Lline2 => ["Union Square", "3rd", "1st"]
:line61 => ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square"]
:line62 => [ "Union Square", "Astor Place"]

p "What station do you want to get on?"
get_on_station = gets.chomp.downcase

p "What line are you getting on at (N) line, (L) line or (6) line?"
get_on_line = gets.chomp.upcase


p "What station do you want to get off?"
get_off_station = gets.chomp.downcase

p "What line are you getting off at (N) line, (L) line or (6) line?"
get_off_line = gets.chomp.upcase

def lines
if get_on_line == get_off_line

get_on_line - get_off_line
else
  
differnt_line
  when get_on_station = "N"

  when get_on_station = "L"
    
  when get_on_station = "6"

station.each do |station|   


  
end

# case which_line
# when "N"
#   train_line = subway_system [:nline]
  
# end