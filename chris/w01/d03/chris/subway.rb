##idea, do not use

subway_system = {
  "N line" => {
    :nline => ["34th", "N28th", "N23rd", "Union Square", "N8th"],
  },
  "L line" => {
    :Lline => ["L8th", "6th", "Union Square", "3rd", "1st"],
  },

    :line6 => ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"],
  },
}

p "What station do you want to get on?"
get_on_station = gets.chomp.downcase

p "What line are you getting on at (N) line, (L) line or (6) line?"
get_on_line = gets.chomp.upcase


p "What station do you want to get off?"
get_off_station = gets.chomp.downcase

p "What line are you getting off at (N) line, (L) line or (6) line?"
get_off_line = gets.chomp.upcase

case which_line
when "N"
  train_line = subway_system [:nline]
  


  
end