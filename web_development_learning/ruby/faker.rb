require 'faker'

info = []

for i in 1..20
  info.push(
  {
    name: Faker::Color.color_name,
    RGB: Faker::Color.rgb_color
  }
  )

end

  # info.sort! {|x,y| y[:name] <=> x[:name] }

puts info.sort_by {|x| x[:name]}
