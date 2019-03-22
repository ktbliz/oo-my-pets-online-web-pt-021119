class Owner
  
  attr_accessor :pets, :species, :name  
  
  def initialize(species) 
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end 
  
  def buy_cat(name) 
    cat = Cat.new(name)
    @pets[:cats] << cat 
  end 
  
  def buy_dog(name) 
    Dog.new(name)
  end 
  
  def buy_fish(name) 
    Fish.new(name)
  end 
  
  
end