# Triangle
# Create a method so if you call .triangle on 3 numbers, the result will tell you if a triangle is equilateral, isosceles, or scalene.
 
# eg
 
# [3,3,5].triangle = "isoceles"
# The program should raise an error if the triangle cannot exist.

def triangle(one, two, three)
  if one == two == three
    print "you have an equalateral triangle"

  elsif one != two != three
    print "you have a scalene triangle"

  else
    print " you have an isoceles triangle"
       
  end
end



class Array

     def triangle

    return "Triangle cant exist" unless self.length == 3


    case self.uniq.length

    when 1
      'equalateral'

    when 2
      'isosceles'

    when 3
      'scalene'
      
        

    end
    
  end