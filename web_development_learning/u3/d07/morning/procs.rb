
# 2.
people_one = [53, 28, 17, 87, 62, 12, 31, 9]
people_two = [13, 45, 67, 76, 50, 29, 18, 21]

# over_eighteen = people_one.select { |age| age > 18 }

# under_eighteen = people_one.reject do |age|
#   age > 18
# end

# puts "over eighteen #{over_eighteen}"
# puts "under eighteen #{under_eighteen}"

# def under_eighteen(arr)
#   return Proc.new {|arr| arr.select {|age| age > 18}}
# end
# over_eighteen = Proc.new {|age| age > 18}

# puts "Under Eighteen #{people_one.reject(&over_eighteen)}"
# puts "Over Eighteen #{people_one.select(&over_eighteen)}"

# 3.

def doSomeMath pass_a_proc, a, b
  pass_a_proc.call(a,b)
end

add = Proc.new {|a,b| puts a + b}
multiply = Proc.new {|a,b| puts a * b}


# doSomeMath(add, 1, 52)
# doSomeMath(multiply, 5, 2)


# 4.
def is_it_even n
  yield n
end

even = Proc.new {|n| p n.even?}

is_it_even 5, &even

# p 6.even?




