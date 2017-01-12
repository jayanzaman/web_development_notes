require "date"

class Tenant

  attr_accessor :f_name, :l_name, :born_on, :gender, :nickname, :occupation, :age

  def initialize(f_name, l_name, born_on, gender)
    @f_name = f_name
    @l_name = l_name
    @born_on = Date.parse(born_on)#http://stackoverflow.com/questions/21391953/ruby-parse-date-string
    @gender = gender
    @nickname = nickname
    @occupation = occupation
  end

  def full_name
    # @full_name = @f_name + " " + @l_name + " " +@nickname
    @full_name = "#{@f_name} #{@l_name} #{@nickname}"
  end

  def age
    today = Date.today
    @age = today.year - @born_on.year
  end

end

# person1 = Tenant.new("Calvin", "Cliford", "December 1st, 1990", "male")
# p person1.gender
# person1.nickname = "Rocket"
# p person1.born_on
# p person1.nickname
# person1.occupation = "CEO of Cool Company"
# p person1.occupation
# p person1.full_name

p1 = Tenant.new("Mildred", "Dreyfuss", "July 18, 1942", "female")
p1.born_on.class

# p p1.born_on

p p1.age
