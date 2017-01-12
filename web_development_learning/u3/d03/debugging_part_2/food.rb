require "byebug"

class Food
  def edible
    response = true
    puts "edible? - #{response}"
  end
end

class HotFood < Food
  def temp
    puts "hot"
  end
end

class Array
  def saythings
    self.each do |x|
      puts x
    end
  end
end

casserole = HotFood.new
casserole.edible

# Food.editable

[1,3,4].saythings


