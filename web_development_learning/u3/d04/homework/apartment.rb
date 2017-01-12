require "./tenant.rb"

class Apartment

  attr_accessor :unit, :num_beds, :num_baths, :tenants

  def initialize(unit, num_beds, num_baths)
    @unit = unit
    @num_beds = num_beds
    @num_baths = num_baths
    @tenants = []
  end

  def price
    @price = @num_beds * 1000 + @num_baths * 500
    # p "$#{@price}"

  end

  def studio
    @num_beds == 1? true : false
  end

  def move_in(person)
    @tenants.length == @num_beds? p("We're full! #{person.full_name} can't move in") : @tenants.push(person)
  end

  def empty?
    @tenants.length == 0? true : false
  end

  def full?
    @tenants.length == @num_beds? true : false
  end
end

# sussexhall = Apartment.new("5", 2, 1)

# p sussexhall.num_beds
# p sussexhall.price
# p sussexhall.studio

