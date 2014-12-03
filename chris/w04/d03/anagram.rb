# Anagram Detector
# Write a program that, given a word and a list of possible anagrams, selects the correct one(s).
 
# In other words, given: "listen" and ['enlists', 'google', 'inlets', 'banana'] the program should return "inlets".
 
# Tips 
# ---- 
 
# + Use ruby docs and find some methods that you can use on arrays and strings to help you. 
# + If you're stuck, google how to find anagrams. 


#########################
# word=["listen"]
# words=['enlists', 'google', 'inlets', 'banana']


# @words_hash = words.each_with_object(Hash.new []) do |word, hash|
#   hash[word.chars.sort] += [word]
# end

##########################

given_word = 'listen'
list_of_words = ['enlists', 'google', 'inlets', 'banana']

def anagram_in(list, word)
  sorted_hash = {} 
  list.each do |item| 
    sorted_item = item.chars.sort.join 
    sorted_hash[sorted_item] = item 
  end 

  sorted_word = word.chars.sort.join 
  sorted_hash[sorted_word] || "Anagram for #{word} doesn't exist"
end


puts anagram_in(list_of_words, given_word)
puts anagram_in(list_of_words, 'cat')