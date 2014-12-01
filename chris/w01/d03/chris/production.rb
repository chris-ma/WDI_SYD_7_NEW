x=5
y=5

def times (first, second)
first *second
end

def print_results (number)
puts "Number is #{number}"
end

result = times(x, y)

print_results(result)
print_results(times(20, 20))