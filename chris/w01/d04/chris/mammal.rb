require_relative "animal"

class Mammal < Animal
  def eat
    puts"I can eat"
  end
  def speak(action)
    puts action
    puts"I can speak"
  end
end