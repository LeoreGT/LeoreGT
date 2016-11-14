require_relative 'instacart'

puts "Welcome to Leore's Awesome Piercing Shop! \nHere's what we have available:"
display_piercings

puts "Type in the name of a piercing that you would like to buy.\nRemember to check your spelling!"
keep_going = nil

until keep_going == "no"
  puts "Type in the item you would like to purchase."
  number_pick = gets.chomp.to_i - 1
  piercing_pick = AVAILABLE_PIERCINGS.keys[number_pick]
  shopping_loop(piercing_pick)
  total = calculate_total
  puts "Your total is: #{total}."
  puts "Do you want to keep going?"
  keep_going = gets.chomp
end
puts "Thanks for shopping. Your total is #{calculate_total}"
