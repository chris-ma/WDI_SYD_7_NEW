a = ["Anil", "Erik", "Jonathan"]

#Q1
puts a [1]

#Q2
a << "Chris"
puts a [3]

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
#Q1
puts h [1]

#Q2
puts h [:two]

#Q3
puts h ["two"]

#Q4
h [3] = "Three"
puts h [3]

#Q5
h [:four] = "4"
puts h [:four]


is = {true => "It's true!", false => "It's false"}

#1

puts is[2 + 2 == 4]
#2
puts is["Erik" == "Jonathan"]
#3
puts is[9 > 10]
#4
puts is[0]
#5
puts is["Erik"]



################
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

#1
puts users ["Jonathan"] [:twitter]

#2
puts users ["Erik"][:favorite_numbers] << 7
 
 #3
puts users ["Chris"] = {}

#4
puts users ["Erik"][:favorite_numbers]
#5
puts users ["Erik"][:favorite_numbers].min
#6
users["Anil"][:favorite_numbers].select {|x| x.even?}

# notodd = users["Anil"][:favorite_numbers]
# def even_number(even)
#     even.each do |even|
#     notodd % 2 ==0
    
#     notodd += "#{even}"
# end
# notodd
# end
# even_number







