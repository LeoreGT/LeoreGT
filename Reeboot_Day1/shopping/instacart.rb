AVAILABLE_PIERCINGS = {
  "Septum" => 20,
  "Smiley" => 15,
  "Nipple" => 30,
  "Prince Albert" => 50,
  "Christina" => 50
}

CART = []

def display_piercings
  i = 1
  AVAILABLE_PIERCINGS.each do |piercing, price|
    puts "#{i} - #{piercing} = #{price}"
    i += 1
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
