# module Animal
# Define Animal as a class
  class Animal

    # Set up accessors and mutators for the attributes of an Animal
    # attr_accessor sets up both for you
  attr_accessor :name, :age, :gender, :species, :toys

    # Used when creating a new animal.
    #   Example:
    #       Animal.new('Timmy', 4, 'male', 'toad')
    def initialize(name, age, gender, species, toys)

      @name = name
      @age = age
      @gender = gender
      @species = species
      @toys = toys

    end


    def to_s
      animal_information = "Animal information: Name:#{@name} Age:#{@age} Gender:#{@gender} Species:#{@species}"
    end

    def add_client(client)
      @client = client
    end


  end

# end
