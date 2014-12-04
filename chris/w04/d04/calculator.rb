#####################

require_relative "./calculator"

puts "2 plus 2 = #{Calculator.add(2, 2)}"
puts "5 minus 1 = #{Calculator.subtract(5, 1)}"
puts "10 times 10 = #{Calculator.multiply(10, 10)}"
puts "500 divided by 50 = #{Calculator.divide(500, 50)}"




#####################

require_relative "./wordy_calculator"

puts Calculator.run("2 plus 2")
#=> 2 plus 2 equals 4

puts Calculator.run("5 minus 1")
#=> 5 minus 1 equals 4

puts Calculator.run("10 times 10")
#=> 10 times 10 equals 100

puts Calculator.run("500 divided by 50")
#=> 500 divided by 50 equals 10