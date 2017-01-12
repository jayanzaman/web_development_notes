# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

100.times do

  name = Faker::Name.name
  User.create(name: name)
end

Book.delete_all

10.times do

  title = Faker::Book.title
  Book.create(title: title)

end


