SECRET_NUMBER = 7
# this is a constant

guessed = false # this assigns the boolean value to false

puts('I\'m thinking of a number between 1 and 10. Can you guess it?') #this is similar to prompt in javascript

while !guessed # only runs when this statement is false
  guess = gets.chomp.to_i # This probably turns the input into integer
  if SECRET_NUMBER == guess # compares the input with the value from before
    guessed = true
  else
    puts("#{guess}? Try again!") # makes you guess again if you get it wrong
  end
end

$stdout.puts('Great job!') #prints out when guessed correctly

