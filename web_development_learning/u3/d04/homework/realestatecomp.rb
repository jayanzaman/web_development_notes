require "./tenant.rb"
require "./apartment.rb"
require "./building.rb"

# a1 = Apartment.new("B", 1, 1)
# p1 = Tenant.new("Fran", "Kubelik", "female", "May 8, 1935")
# p2 = Tenant.new("Matt", "Kabutz", "male", "January 1st, 1992")
# a1.move_in(p1)
# a1.move_in(p2)

# p a1.tenants

# p a1.empty?


# a2 = Apartment.new("B", 2, 1)
# p1 = Tenant.new("Al", "Kirkeby", "male", "January 23, 1949")
# p2 = Tenant.new("Karl", "Matuschka", "male", "June 27, 1949")
# p3 = Tenant.new("Matt", "Kabutz", "male", "January 1st, 1992")

# p a2.empty?
# p a2.full?

# a2.move_in(p1)
# a2.move_in(p2)
# a2.move_in(p3)
# p a2.tenants

b1 = Building.new("208 Leonard St", 3)


a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a3 = Apartment.new("A", 1, 1)


# Specifiy the floor and apartment object
b1.add(1, a1)
b1.add(1, a2)
b1.add(2, a3)
p b1.apartments
b1.collect_rents

b1.vacancies?
