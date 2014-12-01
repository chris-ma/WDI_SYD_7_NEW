
def to_roman(number)
  string= "I" * number
string.gsub("I"*1000, "M").
gsub("I"*900,"CM").
gsub("I"*500,"D").
gsub("I"*400,"CM").
gsub("I"*100,"CM").
gsub("I"*90,"CM").
gsub("I"*50,"CM").
gsub("I"*40,"CM").
gsub("I"*10,"CM").
gsub("I"*9,"CM").
gsub("I"*6,"CM").
gsub("I"*5,"CM").
gsub("I"*4,"CM").
   
    
end

puts to_roman(1024)