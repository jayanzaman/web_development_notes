students = [
  "James",
  "Puneet",
  "Jonathan",
  "Xinke",
  "Mazhar",
  "Bairon",
  "Laura",
  "Carson",
  "Miriam",
  "Vanice",
  "Justin",
  "Jayan",
  "Justin",
  "Bryan",
  "Emmanuel",
  "Taj",
  "Glenn",
  "Jennifer",
  "Ayo",
  "Taylor",
  "Leslie",
  "Fariha",
  "Daniel",
  "Nick",
  "Malik",
  "Matthew",
  "Kristi",
  "Marcela",
  "Hillary",
  "Connie",
  "Miko",
  "Michael",
  "Robert",
  "Danielle",
  "Michelle",
  "Marcos",
  "Dom"
]

students.each{ |d| p d}

students.each do |d|
  letters = d.split(//)
  f_letter = letters[0]
  # puts(f_letter)
  if (f_letter == "A" || f_letter == "E" || f_letter ==  "I" || f_letter ==  "O" || f_letter == "U")
    # puts(d)
    selected_students = []
    selected_students.push(d)
    puts(selected_students)
  end
end

