require 'colorize'

def rainbowSpeak(str)
str_arr = []
  str.split(//).each do |i|
      r1 = rand(0..String.colors.length)
      color = String.colors[r1]
      str_arr.push(i.colorize(color))
  end
  puts str_arr.join
end

rainbowSpeak("Lorem ipsum dolor sit amet, pro choro noster cu, augue aliquam maluisset sit no. At omnis perfecto est. Impedit recteque assentior sed at, ad partiendo iracundia has. Ut primis luptatum volutpat vim, ei idque commune ponderum nam. No deleniti signiferumque eum, at mel dicunt copiosae.")

