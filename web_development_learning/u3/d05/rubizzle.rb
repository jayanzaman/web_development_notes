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

  def details
    basic = "This #{@year} #{@make} #{@model} has #{@miles} miles on it"
    additional = ", and that #{@color} paint is really fading"
    total = basic + additional

    @miles > 50000 ? p(total) : p(basic)

  end

  def change_color(color)
    @color = color
    self.ah_fresh_paint
  end

  def ah_fresh_paint
    p "The new #{@color} color was a good choice"
  end

end

my_first_car = Cars.new("Honda", "Civic", 2009, "blue")
my_first_car.details
my_first_car.seen_another_year
my_first_car.seen_another_year
my_first_car.seen_another_year
my_first_car.seen_another_year
my_first_car.details
my_first_car.change_color("white")
