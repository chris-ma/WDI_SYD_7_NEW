# require_relative "animal"
# require_relative "client"
# module Shelter

    class Shelter

      attr_accessor :animal, :client

        def initialize(animal , client)
          
          @animal = []
          @client = []
        end


        def to_s
        "The shelter has:\n animals:#{@animal.count}\n clients:#{@client.count} "
        end
        # def animal_database 
        #    if @animal_array == []
        #     animal_information = "no animals"
        #         else
        #           animal_information = @animal_array.inject("") do |animal_information, animal|
        #             animal_output << "Animal information: Name:#{@name} Age:#{@age} Gender:#{@gender} Species:#{@species}"
        #         end
        #     end
        #     return animal_information

        # end    
          
        # def client_database
        #     if @client_array ==[]
        #       client_information = "No clients"
        #          else  
        #           client_information = @client_array.inject("") do |client_input|
        #             client_input << "Client information: Name:#{@name} Childrem:#{@children} Age:#{@age} Pets:#{@pets}"
        #          end
        #          return client_information
        #     end

        # end

    end
# end
