# Start with a very simple program without handling prices nor available stock, then improve it.
require 'pry-byebug'

#Display a list of possible items with prices (HASHES!)
#Let user pick items (similar to horse race)
#Record prices and tell them their total
#Have a command where users checkout
#If they keep shopping, keep adding prices to the total
#When they checkout, give them a list of the items they bought + total
#Error message if they put something that isn't there

AVAILABLE_PIERCINGS = {
  "Septum" => 20,
  "Smiley" => 15,
  "Nipple" => 30,
  "Prince Albert" => 50,
  "Christina" => 50
}

CART = []

def display_piercings
  AVAILABLE_PIERCINGS.each do |piercing, price|
    puts "#{piercing} = #{price}"
  end
end

def calculate_total
  sum = 0
  CART.each do |piercing|
    price = AVAILABLE_PIERCINGS[piercing]
    sum =  price + sum
  end
  return sum
end

def added_message
  return "Added to shopping cart! Type the next item you would like to buy.
If you're finished shopping, write \"Checkout\" to purchase your items."
end

def shopping_loop(piercing_pick)
  if AVAILABLE_PIERCINGS.has_key?(piercing_pick)
    puts added_message
    CART << piercing_pick
  else
    puts "I'm sorry, we don't have that.\nPlease check your spelling and try again."
  end
end



# total = piercing_pick.value += sum
