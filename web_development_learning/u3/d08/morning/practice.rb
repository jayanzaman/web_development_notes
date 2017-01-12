class Dog

  def bark
    p "BARK!"
  end

  def bark_phrase(phrase)
    p phrase
  end

end

clifford = Dog.new

p clifford


spongebob_characters = ["Sandy Cheeks", "Mr. Krabs", "Plankton", "Mrs. Puff"]

spongebob_characters << "Patrick"

p spongebob_characters


class Cars

  attr_accessor :make, :model, :year, :color, :miles

  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
    @miles = 0
  end

  def seen_another_year
    @miles = @miles + 15000
  end

end
