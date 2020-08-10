require_relative '../config/environment.rb'

bob = Artist.new("Bob Ross", 40)
monet = Artist.new("Monet", 20)
picasso = Artist.new("Picasso", 10)

louvre = Gallery.new("Louvre", "Paris")
moma = Gallery.new("Moma", "New York")
gug = Gallery.new("Guggenheim", "New York")
met = Gallery.new("Met", "Chicago")

bob.create_painting("Happy Trees", 10000, moma)
weeping = Painting.new("Weeping woman", 13, louvre, picasso)
weeping2 = Painting.new("Weeping woman", 12, louvre, picasso)
weeping3 = Painting.new("Weeping woman", 12, louvre, picasso)
sunrise = Painting.new("Sunrise", 30000, gug, monet)

binding.pry

puts "Bob Ross rules."
