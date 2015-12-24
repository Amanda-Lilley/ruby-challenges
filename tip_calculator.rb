puts "What is the bill amount?"
bill_amount = gets.chomp.to_f

puts "Please choose a tip percentage:"
puts "a) 10%"
puts "b) 15%"
puts "c) 20%"

tip_amount = gets.chomp

case tip_amount
when 'a'
  tip = bill_amount * 0.10
  puts "Total is: $#{bill_amount + tip}"
when 'b'
  tip = bill_amount * 0.15
  puts "Total is: $#{bill_amount + tip}"
when 'c'
  tip = bill_amount * 0.20
  puts "Total is: $#{bill_amount + tip}"
end
