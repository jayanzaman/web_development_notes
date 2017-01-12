class Dog
    def breed
        "Shiba Inu"
    end

    def name
        "Carrie"
    end

    def nickname
        "Cuckoo Bear"
    end

    def bark1
        puts "Bark Bark Bark!"
    end

    def bark2
        puts "Shriek howl!"
    end
end

# carrie = Dog.new
# p carrie
# puts carrie.breed
# puts carrie.name
# puts carrie.nickname
# carrie.bark1
# carrie.bark2

class Dog2
    attr_accessor :breed, :name, :nickname, :bark1, :bark2
    # there's also just attr_reader for getters & attr_writer for setters
    #attr_accessor gives you both!
end

# carrie = Dog2.new
# carrie.breed = "Moose"

# puts carrie.breed
# puts carrie.name
# puts carrie.nickname
# carrie.bark1
# carrie.bark2


class Dog3
  def breed=(value)
    @breed = value
  end

  def breed
    @breed
  end
end

# carrie = Dog3.new
# carrie.breed = "horse"
# puts carrie.breed


class Cat
  attr_accessor :name, :color
end

# new_cat = Cat.new
# new_cat.name = "Meowth"
# new_cat.color = "Orange"
# puts new_cat.name
# puts new_cat.color

class Dog4
    attr_accessor :name, :nickname, :breed, :bark2
    attr_reader :bark1,

    def initialize(name, nickname, breed, bark1)
        @name = name
        @nickname = nickname
        @breed = breed
        @bark1 = bark1
        @bark2 = "whats up"
    end

end

# my_dog = Dog4.new("Carrie", "Cuckoo Bear", "Shiba Inu", "gorp")

# p my_dog

# p my_dog.name
# p my_dog.nickname
# p my_dog.breed

# p my_dog.bark1
# my_dog.bark2 = "I'm a good dog"
# p my_dog.bark2

class Dog5
    attr_accessor :mood

    def initialize
      @hunger = 0
    end
    def wait
      @hunger = @hunger + 1
    end
    def feed
      @hunger = @hunger - 1
    end
    def mood
      10 - (@hunger *2)
    end

end

lassy = Dog5.new

# p lassy.mood
# p lassy.wait
# p lassy.mood
# p lassy.feed
# p lassy.mood

class Student

  attr_accessor :first_name, :last_name, :age, :favorite_food

  def initialize (first_name, last_name, age, favorite_food)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @favorite_food = favorite_food
  end

end

john = Student.new("John", "Smith", 34, "Ice Creame")

# p john.first_name
# p john.last_name
# p john.age
# p john.favorite_food


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

# puts player1
# puts ogre1

# player1.attack

class Card
  def suit
    @suit = "Heart"
  end
  def value
    @value = 5
  end

end

class FaceCard < Card
  def value
    @value = 10
  end
end

class Ace < Card
  # def value
  #   @value = 11
  # end
end

newCard = Ace.new

p newCard.value
p newCard.suit






