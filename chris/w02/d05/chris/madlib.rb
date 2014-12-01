print "Is it time to tell another tale? (y/n) "
start_again = gets.strip

if start_again == 'y'
  if File.exists? 'story.txt'
    File.unlink('story.txt')
  end
end

unless File.exists? 'story.txt'
  file = File.new('story.txt', 'a+')
  file.close
  puts "Created file"

  print "thought: "
  thought = gets.strip
  print "Number: "
  number = gets.strip.to_i
  print "Armour: "
  armour = gets.strip
  print "body part: "
  body_part = gets.strip
  print "Animal: "
  animal = gets.strip
  print "Sound:"
  sound = gets.strip


 File.open('story.txt', 'a+') do |story_file|


story_file.write("In J.R.R. Tolkien`s famous trilogy, Lord of the #{thought}, the second book is called #{number} Tower(s). During the course of this book, two stories are followed. The first is that of the Light, the Soup Can and the Poster as they pursue the Punched Hobbits. Along the way, they get waylaid into Flicking the people of Rohan, who are battling against the hordes sent by Saruman (identified by the white #{body_part}). They eventually end up at #{armour}`s Deep, which they defend from the attacking #{animal}. The second story that is followed is that of Frodo and Sam as they Splinter for a way into Mordor. Following them is Pfft, a miserable Loop that is bound to the one Expectation. They capture him and force him to Claw them to the Fires of Mordor. They abandon hopes of getting into Mordor there, so they look for another way in. Luckily #{sound} knows another way.")
end

else
  # Step 4: Display the file
  file = File.open('story.txt', 'r')
  puts file.read
end