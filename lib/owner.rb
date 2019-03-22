class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(species) 
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self 
  end 
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all
  
  end 
  
  def say_species
    puts "I am a #{@species}."
  end 
  
  def buy_cat(name) 
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name) 
    @pets[:dogs] << Dog.new(name)
  end 
  
  def buy_fish(name) 
    @pets[:fishes] << Fish.new(name)
  end 
  
  
end