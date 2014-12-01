people= ["jack", "Wolf","Bilbo"]
#people.each { |person| puts person.upcase}

people.each do |person| 
  puts person[:name]
  puts person[:age]
  puts
end

#top line replaces code below

# max_loop_number = people.length
# counter = 1
# while counter <= max_loop_number
# person= people[counter]

#   counter +=1
# end