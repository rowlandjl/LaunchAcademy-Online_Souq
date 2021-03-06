shopping_cart = Array.new

items = [
  "old paperback book",
  "potato",
  "red onion",
  "dried lemon",
  "frankincense",
  "medicinal herbs",
  "saffron",
  "glass spice jar",
  "red fabric",
  "orange fabric",
  "handicrafts",
  "small Persian rug",
  "medium Persian rug",
  "large Persian rug",
  "extra large Persian rug"
]

choices = ""

print "What is your name? "
name = gets.chomp

puts "Welcome #{name}"

puts "Here's a list of items you can purchase: "

items.each do |item|
  puts "* #{item}"
end


while true
  puts "Which items would you like to purchase? Type 'finished' when you are done!"
  choices = gets.chomp.downcase
  if choices == "finished"
    break
  elsif items.include?(choices)
    shopping_cart << choices
  else
    puts "Sorry, that item is not on the list. Try again"
    puts
  end
end

puts "#{name}, thanks for trying our online Souq platform. Here is a list of items in your cart!:"

shopping_cart.each do |purchases|
  puts "* #{purchases}"
end
