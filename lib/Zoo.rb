class Zoo
attr_reader :name, :location, :animals
@@zoos = []
def initialize(name,location)
  @name = name
  @location = location
  @animals = []
  @@zoos << self
end

def self.all
@@zoos
end

def animal_species
  @animals.map {|animal| animal.species}.uniq
end

def find_by_species(species)
  @animals.select do |animal|
    animal.species == species
  end


end
def animal_nicknames
@animals.map do |animal|
    animal.nickname
end
end

def self.find_by_location(location)
  self.all.select do |zoo|
    zoo.location == location
  end
end


end
