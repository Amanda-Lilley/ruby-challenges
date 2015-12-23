one_to_one_hundred = (1..100).to_a

one_to_one_hundred.each do |number|

  if number%3 == 0 and number%5 == 0
    puts "FizzBuzz"
  elsif number%3 == 0
    puts "Fizz"
  elsif number%5 == 0
    puts "Buzz"
  else
    puts number
  end
end
