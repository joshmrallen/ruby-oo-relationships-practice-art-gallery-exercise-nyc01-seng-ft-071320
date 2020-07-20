require 'pry'
require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

michael = Artist.new("Michael Florentine", 30)
jessica = Artist.new("Jessica Simpson", 4)
terry = Artist.new("Terrence Couragious", 5)

miami = Gallery.new("Miami Galleria Gallery", "Miami, Florida, USA")
nyc = Gallery.new("Modern Museum of Art", "NYC")
paris = Gallery.new("La Louvre", "Paris, France")
beijing = Gallery.new("Beijing Museum of Art", "Beijing, China")

venus = michael.create_painting("Venus", 400, miami)
saturn = michael.create_painting("Saturn", 600, miami)
neptune = michael.create_painting("Neptune", 400, nyc)

one = jessica.create_painting("one", 200, nyc)
two = jessica.create_painting("two", 200, nyc)
three = jessica.create_painting("three", 200, nyc)
four = jessica.create_painting("four", 200, nyc)
five = jessica.create_painting("five", 200, nyc)
six = jessica.create_painting("six", 200, nyc)
seven = jessica.create_painting("seven", 200, nyc)

q = terry.create_painting("q", 100, beijing)
r = terry.create_painting("r", 100, beijing)
s = terry.create_painting("s", 100, beijing)
t = terry.create_painting("t", 100, beijing)
u = terry.create_painting("u", 100, beijing)



binding.pry

puts "Bob Ross rules."
