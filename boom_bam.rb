boom_bam = (1..100).to_a

boom_bam.each do |number|
  if number%5 == 0 and number%10 == 0
    puts "BOOM BAM!"
  elsif number%5 == 0
    puts "BOOM!"
  elsif number%10 == 0
    puts "BAM!"
  else
    puts number
  end
end
