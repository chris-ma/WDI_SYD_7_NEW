# create 9 more records so that you have 10 to work with
people_csv = [
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town"
]

result = people_csv.map do |csv_string|  
strings_parts = csv_string.split (" ,")
{
  first_name: strings_parts [0],
  last_name: strings_parts [1],
  email: strings_parts [2],
  address: strings_parts [3],
  suburb: strings_parts [4]


}
end
puts result

