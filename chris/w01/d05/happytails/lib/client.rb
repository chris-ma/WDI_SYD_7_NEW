module Client
# Define Animal as a class
  class Client

    # Set up accessors and mutators for the attributes of an Animal
    # attr_accessor sets up both for you
    attr_accessor :name, :children, :age, :pets

    # Used when creating a new animal.
    #   Example:
    #       Animal.new('Timmy', 4, 'male', 'toad')
    def initialize(name, children, age, pets)

  self.name = name
  self.children = children
  self.age = age
  self.pets = pets

    end



    # When we display the animal using puts or print, the
    #   to_s method is called to pretty print an Animal
    def to_s
      p "Here's the client details that you have enquired:"
      p "Name: #{self.name}"
      p "Children: #{self.children}"
      p "Age: #{self.age}"
      p "Pets: #{self.pets}"

    end
  end
end
