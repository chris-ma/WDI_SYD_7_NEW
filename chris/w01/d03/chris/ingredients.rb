dry_stuff =["flour", "sugar", "salt", "soda"]
wet_stuff =["water","eggs","milk"]

def cooking_stuff (stuff)
mixing = "Mix the following stuff:"
stuff.each do |yummy|
mixing += ""+"#{yummy}"
end
mixing

  end
 cake = cooking_stuff ([dry_stuff,wet_stuff])
 puts cake