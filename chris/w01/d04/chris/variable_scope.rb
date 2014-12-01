require "pry"

class Animal
  def move
    puts "move!"
  end

end

class Mammal < Animal
  def eat
    puts"I can eat"
  end
  def speak(action)
    puts action
    puts"I can speak"
  end
end

class Monkey < Mammal
  def swing
    puts"I can swing"
  end  
   def speak(action)
    super
   puts "Hoowowowowoww" 
  end
end

do_something = "kick hard"
speak(do_something)

binding.pry