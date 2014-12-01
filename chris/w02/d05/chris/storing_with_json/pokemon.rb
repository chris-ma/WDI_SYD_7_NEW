require "json"

#step 1, seeing if file exists

unless File.exists?('pokemon.txt')  #checking if the file exists

  File.open('pokemon.txt', 'a+') #opening up the session
  else  # Step 5: Print the database
pokedex = File.open ('pokemon.txt','r').read
puts JSON(pokedex)  rescue[]

end

#step 2 get the details
puts "Name the pokemon: "
pokemon = gets.strip        #getting the pokemon details

if File.exists?('pokemon.txt')  
  pokedex = File.open('pokemon.txt', 'r').read   #if pokemon.txt exists, read the file
  pokemon_list = JSON.parse(pokedex) rescue[] #opens pokemon.txt to display
  else
    pokemon_list = []  #otherwise open blank array
end

while pokemon !='q'   #while you dont press q, whatever pokemon gets put in will be entered into the pokedex
  pokedex << pokemon  
  pokemon = gets.strip
end

# Step 3: Convert to JSON
pokemon_json = JSON.generate(pokedex)

# Step 4: Save the JSON
File.open('pokemon.txt', 'w+') do |pikachu| #writing the pikachu variable into the pokemon json
pikachu.write(pokemon_json)
end

pokedex = File.open('pokemon.txt','r').read #preparing pokemon.txt to display on the screen
puts JSON(pokedex) rescue[]   #puts pokemon.txt on screen to be displayed
