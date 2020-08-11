require_relative '../config/environment.rb'




# binding.pry

######### ARTISTS #########
a1 = Artist.new("Judy", 44)
a2 = Artist.new("Romeo", 25)
a3 = Artist.new("Picasso", 26)

######### GALLERIES #########
g1 = Gallery.new("Old Studio", "Rome")
g2 = Gallery.new("Artist Loft", "Paris")
g3 = Gallery.new("Loft", "Milan")

######### PAINTINGS #########
p1 = Painting.new(a1, g1, "Mona Lisa", 8000)
p2 = Painting.new(a2, g2, "Slerg", 18000)
p3 = Painting.new(a3, g3, "David", 800)
p4 = Painting.new(a1, g3, "Slash", 79500)
p5 = Painting.new(a1, g3, "Hello", 7950)
p6 = Painting.new(a3, g2, "What do you say?", 7000)

Pry.start