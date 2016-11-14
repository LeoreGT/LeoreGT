require_relative "01-calculator"

puts "Insert a number."
  user_input = gets.chomp

puts "Would you like to add, subtract, multiply, or divide? Use +, -, *, or /"
  user_input_2 = gets.chomp

puts "Insert a number."
  user_input_3 = gets.chomp

puts "#{user_input} #{user_input_2} #{user_input_3} = #{answer(user_input, user_input_2, user_input_3)}"
