students= ["jack", "Wolf","Bilbo"]

students.each do |x| puts x.capitalize end
#alternative method
  students.each do |student|   
    unless student == "Wolf"
      puts student.capitalize
    else
      puts student
    end
  end

#map method
map_stud = students.map do |student| 
  student.capitalize
  end
  p map_stud
# empty array 
  stud_cap= []
  students.each do |student|
    stud_cap << student.capitalize
      
    end
    p stud_cap

#gsub

# tweets[]

# tweets.map do 

  #times

  5.times do |x|
    puts "I've been #{x}"
  end

  #up to
  5.upto(10) do 
    puts "Test"
  end

  # down to
  5.upto(1) do 
    puts "Pest"
  end

  # split method
  students= ["jack  jacks", "wolf hound dog","Bilbo baggins"]
splits = students.map do |student|
  student.split(" ").map do |name_part| 
  name_part.capitalize
  end
  .join(" ")
end
p splits
