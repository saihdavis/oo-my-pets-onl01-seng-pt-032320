require "pry"
class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name= name
    @species = "human"
  end
  
  def save
    @@all << self
  end
  
  
  
  def say_species 
    "I am a #{species}."
end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  def self.all
    #binding.pry
    @@all 
  end
  def self.count
    @all.count
  end
end