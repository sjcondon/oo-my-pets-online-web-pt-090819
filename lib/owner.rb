class Owner
  attr_reader :name, :species
  @@all = []
  

  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end
    
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    cat.all.select{|c| c.owner == self}
  end

  def dogs
    dog.all.select{|d| d.owner == self}
  end
  
#   def buy_cat(cat)
#     @@pets[:cats] << Cat.new(cat)
#   end

#   def buy_dog(dog)
#     @@pets[:dogs] << Dog.new(dog)
  end

#   def pets
#     @@pets
#   end


#   def walk_dogs
#     @@pets[:dogs].each do |dog|
#       dog.mood = 'happy'
#     end
#   end

#   def play_with_cats
#     @@pets[:cats].each do |cat|
#       cat.mood = 'happy'
#     end
#   end

 
#   def list_pets
#     "I have  #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
#   end

#   def sell_pets
#     pets.each do |pet, arr|
#       arr.map do |pet|
#         pet.mood = 'nervous'
#       end
#       arr.clear
#     end
#   end

end