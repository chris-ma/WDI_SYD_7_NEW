# module Client

  class Client

    attr_accessor :name, :children, :age, :pets

      
      def initialize(name, children, age, pets)
      @name = name
      @children = children
      @age = age
      @pets = pets
      end

      def to_s
      client_information = "Client information: Name:#{@name} Childrem:#{@children} Age:#{@age} Pets:#{@pets}"
      end
  
      def adopt
      number_of_pets += 1
      end

      def put_up_to_adopt
      number_of_pets += 1
      end

  end
# end
