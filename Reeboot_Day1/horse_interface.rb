require_relative "02-horse_racing"

horse_names = ["Nightmare", "Italian Stallion", "Coal Foal", "Colt Revolt"]

puts "Today we have:"
horse_names.each_with_index do |horse, index|
  puts "#{index + 1} - #{horse}"
end

puts "Which beast will ya be bettin' on today? Insert a number 1 - 4."
user_pick = gets.chomp.to_i-1

betting_horse = horse_names[user_pick]

sleep(1)
puts "Hold yer horses!"
sleep(1)

horse_names.shuffle!

puts "The winner is #{horse_names.first}"

if betting_horse == horse_names.first
  puts "You win!"
else
  puts "Better luck next time!"
end
