puts "Hello, please choose a number."
number = gets.chomp
x = (number.to_i + 5) * 2
y = (x - 4) / 2
puts "Your final number is #{y - number.to_i}."
