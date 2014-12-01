
require_relative "animal"
require_relative "client"
require_relative "shelter"


module Happytails

  class Start

    def start

      animals = [
        Animal.new("Doge", 1, "f", "Meme",2)
      ]

      clients = [
        Client.new("John", 1, 16, 1)
      ]

      shelter = [
        Shelter.new(["Jack", 0, 21, 0],["Doge", 1, "f", "Meme",2])
      ]

    end


    def menu
    puts "Shelter Program"
    puts "==============="
    puts "1  | listings" 
    puts "2  | animal adoption / up for adoption"
    puts "3  | client details"
    puts "q  | quit"

    gets.chomp.downcase
    end

    response = menu

    case response
    when '1'
      puts '1. List animal'   
      puts '2. List client'
      reply = gets.chomp.downcase
      if reply == '1'
        puts shelter.animals.to_s
        gets
        menu
      else reply == '2'
        puts shelter.clients.to_s
        gets
        menu
      end
    when '2'
      puts "Aer you adopting or putting an animal for adoption?"
      puts "1. Input animal details "
      puts "2. Adoption process" 
      puts "quit "
      adopt_choice = gets.chomp.downcase
      while adopt_choice != 'q'
        case adopt_choice
        when '1'
          print "Name: "
          name = gets.chomp.capitalize
          print "Pet species: "
          species = gets.chomp.capitalize
          print "Age: "
          age = gets.to_i
          print "Gender: "
          gender = gets.chomp.downcase
          shelter.animals[name] = Animal.new(name, species, age, gender)
          puts "Animal added to database"
        when '2'
          puts "These are the animals that up for adoption: "
          puts shelter.animals.keys
          print "What's the name of the animal being adopted? "
          animal_name_out = gets.chomp
          print "What's the name of the new owner? "
          new_owner = gets.chomp.capitalize
          shelter.animals[animal_name_out].add_owner(new_owner)
          puts "Animal adopted"
        end

        print "1. for input, 2. for adoption or press 'q' to quit "
        adopt_choice = gets.chomp.downcase
      end
    when '3'
      print "Would you like to add a client? Y/N "
      answer = gets.chomp.downcase
      if answer == 'y'
        print 'Name: '
        name = gets.chomp
        print 'Age: '
        age = gets.to_i
        print 'Gender: '
        gender = gets.chomp
        print 'Number of children: '
        num_kids = gets.to_i
        print 'Number of pets: '
        num_pets = gets.to_i
        client = Client.new(name, age, gender, num_kids, num_pets)
        shelter.clients[name]=client
        puts 'Client has been added! Press return to continue.'.color(:yellow)
        gets
        menu
      else
        menu
      end
    when 'q'
      puts 'Goodbye!'
    end
    response = menu
  end

end