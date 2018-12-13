require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Flatiron Student's Zoo", "Dumbo")
zoo2 = Zoo.new("Turing Zoo", "Bronx")
zoo3 = Zoo.new("Bronx Zoo", "Bronx")

animal1 = Animal.new("Dog", 57, "Fido", zoo1)
animal2 = Animal.new("Dog", 24, "FeeFee", zoo1)
animal3 = Animal.new("Bird", 10, "Tweety", zoo2)
animal4 = Animal.new("Elephant", 300, "Rufus", zoo2)

binding.pry
puts "done"
