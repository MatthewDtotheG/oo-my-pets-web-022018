require "pry"

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    all.length
  end

  def self.reset_all
    @@all = []
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    dogs.each { |dog| dog.mood = "happy" }
  end

  def dogs
    pets[:dogs]
  end

  def play_with_cats
    cats.each { |cat| cat.mood = "happy" }
  end

  def cats
    pets[:cats]
  end

  def feed_fish
    fishes.each { |fish| fish.mood = "happy" }
  end

  def fishes
    pets[:fishes]
  end

  def sell_pets
    pets.each do |species, animals|
    animals.each do |animal|
    animal.mood = "nervous"
    end
    animals.clear
    end
  end

  def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
