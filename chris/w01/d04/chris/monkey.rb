require_relative "mammal" 
class Monkey < Mammal
  def swing
    puts"I can swing"
  end  

   def speak(action)
    super
   puts "Hoowowowowoww" 
    end

  def perform
    eat
    swing
    speak ("Hello")
    
  end
end