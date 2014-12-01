part_one="Car body"
part_two=["Wheel one","Wheel two","wheel three","wheel four"]
part_three="Yellow paint"

def construct_car (parts)
  result_string = "The toy car is made of : \n"
  parts.each do |part|
    result_string += "* #{part}\n"
  end
  result_string
end

puts construct_car ([part_one, part_two,part_three])