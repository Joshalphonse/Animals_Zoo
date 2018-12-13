class Animal
  attr_reader :species, :nickname, :weight, :zoo
  attr_writer :weight, :zoo

  @@animals = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @nickname = nickname
    @weight = weight
    @zoo = zoo
    zoo.animals << self
    @@animals << self
  end

  def self.all
    @@animals
  end

  def self.find_by_species(species)
    self.all.select do |animal|
      species == animal.species
    end
  end

end
