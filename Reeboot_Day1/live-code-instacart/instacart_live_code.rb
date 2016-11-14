require_relative 'scraper'
# List products in your wishlist
# Add a new product to your list (e.g. "Jeans", "Socks", etc..)
# Delete an item you don't want in your list anymore
# Mark any item as "checked" when you've bought it
# It's like a basic todolist with products instead of tasks.

wishlist = [
{
  name:  "Beach House",
  finished: false
},
{
  name: "Horse",
  finished: false
},
{
  name: "Airplane",
  finished: false
},
{
  name: "School",
  finished: true
},
{
  name: "Heroin",
  finished: false
}
]

# Adding an element to the list (like a boss)
wishlist << {name: "Dinosaur", finished: true}

# Delete an item
wishlist.delete_at(1)

# Change the value of a finished key
wishlist[0][:finished] = true

def display_wishlist(items)
  items.each_with_index do |stuff, index|
    name = stuff[:name]
    if stuff[:finished] == false
      p "#{index + 1} [ ] - #{name}"
    else
      p "#{index + 1} [X] - #{name}"
    end
  end
end


puts "Welcome to your Wishlist.\nHere is your wishlist:"
display_wishlist(wishlist)
puts "What would you like to do? Add/Delete/Check/Exit/Display/Search"
user_action = gets.chomp

until user_action.downcase == "exit"
  case user_action.downcase
  when "add"
    puts "What would you like to add?"
    user_item_added = gets.chomp
    wishlist << {name: user_item_added, finished: false}
    puts "Your item has been added to the wishlist!"
  when "delete"
    puts "What would you like to delete? Pick a number."
    user_index_deleted = gets.chomp.to_i - 1
    wishlist.delete_at(user_index_deleted)
    puts "Your item has been deleted from the wishlist!"
  when "check"
    puts "What would you like to check/uncheck? Pick a number."
    user_item_checked = gets.chomp.to_i - 1
    wishlist[user_item_checked][:finished] = !wishlist[user_item_checked][:finished]
    puts "Your item has been checked in the wishlist!"
  when "display"
    display_wishlist(wishlist)
  when "search"
    puts "What do you want to search?"
    user_search = gets.chomp
    etsy_results = collect_from_etsy(user_search)
    display_wishlist(etsy_results)
    puts "What would you like to add? Pick a number."
    user_search_pick = gets.chomp.to_i - 1
    wishlist << etsy_results[user_search_pick]
  else
    puts "I don't understand. Please try again."
  end
  puts "What would you like to do? Add/Delete/Check/Exit/Display/Search"
  user_action = gets.chomp
end
puts "Goodbye!"

display_wishlist(wishlist)





