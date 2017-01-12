# kanye_records = [
# { year: 2016, title: "The Life of Pablo" },
# { year: 2013, title: "Yeezus" },
# { year: 2011, title: "Watch the Throne" },
# { year: 2010, title: "My Beautiful Dark Twisted Fantasy" },
# { year: 2008, title: "808s and Heartbreak" },
# { year: 2007, title: "Graduation" },
# { year: 2005, title: "Late Registration" },
# { year: 2004, title: "The College Dropout" }
# ]

# kanye_records.each do |r|
#   puts r
#   puts r[:title]
#   puts r[:year]
# end
# kanye_records.unshift({year: 2017, title: "Donald Trump Presidency"})

# puts kanye_records

# kanye_records.each do |r|
#   if (r[:year] > 2007)
#     puts r[:title]
#   end
# end
# kanye_records.each do |d|
#   puts "#{d[:title]} was released in #{d[:year]}}"
# end
# kanye_records.each do |d|
#   d[:label] = "def jam"
# end
# puts kanye_records

# kanye_records.each do |d|
#   d[:title].gsub!(/o/,"0")
# end

#   puts kanye_records


module HI
  def hello_world
    puts 'hi'
  end

end
puts HI.hello_world






