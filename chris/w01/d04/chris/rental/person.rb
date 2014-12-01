require "apartment"

class Person < apartment
attr_accessor :name, :age, :gender
attr_reader people

    def initialized (name, age, gender)
      self.name = name
      self.age = age.to_i
      self.gender = gender
    end

    def show_person
      print "#{name} / #{age} / #{gender}"
      
    end
end

personal = Person.new ("fff", 23, male)
personal.initialized