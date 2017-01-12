# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(first_name: 'John', last_name: 'Bell', age:30, email:'bell@ga.co')
user2 = User.create(first_name: 'Bryan', last_name: 'Mytko', age:34, email:'bryan.mytko@ga.co')
user3 = User.create(first_name: 'Jayan', last_name: 'Zaman', age:30, email:'jayanzaman@gmail.com')

# p1 = Project.create(name: 'MTA Status', url: 'http://mtastat.us', user_id: user1.id)
# p2 = Project.create(name: 'Rubiks Cube Timer', url: 'http://rubikscubetimer.com', user_id: user2.id)

# p3 = Project.create(name: 'Open FDA', url: 'https://fdainfo.herokuapp.com/', user_id: user3.id)
