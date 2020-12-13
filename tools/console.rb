require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 23)
michaelangelo = Artist.new("Michaelangelo", 18)

vatican = Gallery.new("The Vatican", "Vatican City")
met = Gallery.new("The Met", "New York City")

scream = Painting.new("Scream", 1000000, picasso, met)
time = Painting.new("Time", 1348318, picasso, met)
sistine = Painting.new("Sistine Chapel", 999999, michaelangelo, vatican)
david = Painting.new("David", 12345, michaelangelo, vatican)
ugh = Painting.new("Ugh", 13984, michaelangelo, vatican)




binding.pry

puts "Bob Ross rules."
