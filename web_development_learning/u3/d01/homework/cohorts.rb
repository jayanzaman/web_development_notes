students_2 = [
  {
    name: "James",
    cohort: "Mulder"
  },
  {
    name: "Puneet",
    cohort: "Mulder"
  },
  {
    name: "Jonathan",
    cohort: "Scully"
  },
  {
    name: "Xinke",
    cohort: "Mulder"
  },
  {
    name: "Mazhar",
    cohort: "Mulder"
  },
  {
    name: "Bairon",
    cohort: "Scully"
  },
  {
    name: "Laura",
    cohort: "Scully"
  },
  {
    name: "Carson",
    cohort: "Scully"
  },
  {
    name: "Miriam",
    cohort: "Mulder"
  },
  {
    name: "Vanice",
    cohort: "Mulder"
  },
  {
    name: "Justin",
    cohort: "Mulder"
  },
  {
    name: "Jayan",
    cohort: "Scully"
  },
  {
    name: "Justin",
    cohort: "Scully"
  },
  {
    name: "Bryan",
    cohort: "Mulder"
  },
  {
    name: "Emmanuel",
    cohort: "Scully"
  },
  {
    name: "Taj",
    cohort: "Scully"
  },
  {
    name: "Glenn",
    cohort: "Mulder"
  },
  {
    name: "Jennifer",
    cohort: "Mulder"
  },
  {
    name: "Ayo",
    cohort: "Scully"
  },
  {
    name: "Taylor",
    cohort: "Scully"
  },
  {
    name: "Leslie",
    cohort: "Mulder"
  },
  {
    name: "Fariha",
    cohort: "Mulder"
  },
  {
    name: "Daniel",
    cohort: "Mulder"
  },
  {
    name: "Nick",
    cohort: "Mulder"
  },
  {
    name: "Malik",
    cohort: "Scully"
  },
  {
    name: "Matthew",
    cohort: "Scully"
  },
  {
    name: "Kristi",
    cohort: "Scully"
  },
  {
    name: "Marcela",
    cohort: "Mulder"
  },
  {
    name: "Hillary",
    cohort: "Scully"
  },
  {
    name: "Connie",
    cohort: "Scully"
  },
  {
    name: "Miko",
    cohort: "Scully"
  },
  {
    name: "Michael",
    cohort: "Mulder"
  },
  {
    name: "Robert",
    cohort: "Mulder"
  },
  {
    name: "Danielle",
    cohort: "Mulder"
  },
  {
    name: "Michelle",
    cohort: "Mulder"
  },
  {
    name: "Marcos",
    cohort: "Mulder"
  },
  {
    name: "Dom",
    cohort: "Mulder"
  }
]


# List the students in the array above by printing their names to the terminal.
# Print out the students names in all caps.
# Create an array of all of the students’ cohort name.
cohorts = []
students_2.each do |d|
  puts(d[:name].upcase)

  cohorts.push(d[:cohort])
  # puts(cohorts)
end

  puts(cohorts)


