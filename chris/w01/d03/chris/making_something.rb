
parent_one = "man"
parent_two = "woman"
kids = ["kid1", "kid2", "kid3", "kid4"]

def make_family (family)
  puts "This is whats in this family:"
family.each do |family|
  family += "* #{family}\n"
end
family
end

puts make_family (["parent_two","parent_one","kids" ])