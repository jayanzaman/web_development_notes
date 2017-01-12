# - too specific
# class King
#   def value_in_blackjack
#     10    
#   end

#   def suit
#     "heart"
#   end
# end
# king_of_hearts = King.new
# puts king_of_hearts.value_in_blackjack
# puts king_of_hearts.value_in_blackjack
# puts king_of_hearts.suit



#carrie = Dog.new
# p carrie
# puts carrie.breed
# puts carrie.name
# puts carrie.nickname
# carrie.bark1
# carrie.bark2
#carrie.suit = "hearts"


# class Dog2
#   attr_accessor :breed, :name, :nickname, :bark1, :bark2
  
# end                                   

# carrie = Dog2.new
# carrie.breed = "Moose"
# carrie.name = "mooseDog"

# puts carrie.breed
# puts carrie.name
# puts carrie.nickname
# puts carrie.bark1
# puts carrie.bark2


# class Dog3
#   attr_accessor :breed
  
#   # def breed=(value)
#   #   @breed = value
#   # end

#   # def breed
#   #   @breed
#   # end
# end

# carrie = Dog3.new
# carrie.breed = "horse"
# puts carrie.breed

# class Dog4
#     attr_accessor :name, :nickname, :breed, :bark2
#     attr_reader :bark1

#     def initialize(name, nickname, breed, bark1)
#         @name = name
#         @nickname = nickname
#         @breed = breed
#         @bark1 = bark1
#         @bark2 = "whats up"
#     end
# end

# my_dog = Dog4.new("Carrie", "Cuckoo Bear", "Shiba Inu", "gorp")

# p my_dog

# p my_dog.name
# p my_dog.nickname
# p my_dog.breed

# p my_dog.bark1
# p my_dog.bark2

# my_dog.bark2 = "I am a goldfish"
# p my_dog.bark2


# class Dog5
#   def initialize()
#     @hunger = 0
#   end

#   def wait
#     @hunger = @hunger + 1
#   end

#   def feed
#     @hunger = @hunger - 1
#   end

#   def mood
#     10 - (@hunger * 2)
#   end

# end

# lassy = Dog5.new

# p lassy.mood
# lassy.wait
# p lassy.mood
# p lassy.wait
# p lassy.mood
# lassy.feed
# p lassy.mood

class GameEntity
  attr_accessor :name, :hitpoints, :attack_dmg

  def initialize(name, hitpoints, attack_dmg)
    @name = name
    @hitpoints = hitpoints
    @attack_dmg = attack_dmg
  end

end

class Player < GameEntity
    def attack
        puts "You take #{@attack_dmg} damage!"
    end
end

class Ogre < GameEntity
    def initialize(hitpoints, attack_dmg)
        @name = "Zum"
        @hitpoints = hitpoints
        @attack_dmg = attack_dmg
    end
end

player1 = Player.new("Joe", 100, 9999)
ogre1 = Ogre.new(10, 1)
puts player1
puts ogre1

player1.attack

puts ogre2
