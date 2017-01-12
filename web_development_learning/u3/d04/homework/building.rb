require "./apartment.rb"

class Building

  attr_accessor :address, :num_of_floors, :apartments, :apt_on_floor, :total_price, :vacancies

  def initialize(address, num_of_floors)
    @address = address
    @num_of_floors = num_of_floors
    @apartments = []
  end

  def add(fl_no, apt)
    @apartments.push(apt)
    @apt_on_floor = Hash.new
    @apt_on_floor = {floor: fl_no, apt: apt}

  end

  def floor(fl_no)
    p @apt_on_floor[fl_no]
  end

  def collect_rents
    total_price = 0
    @apartments.each { |x|
      total_price = total_price + x.price
      }

    @total_price = total_price
    p @total_price

  end

  def vacancies?
    vacancies = 0
    @apartments.each { |x|
      x.full? ? vacancies : vacancies = vacancies + 1
    }
    @vacancies = vacancies
    @vacancies > 0 ? p(true) : p(false)
  end

end
