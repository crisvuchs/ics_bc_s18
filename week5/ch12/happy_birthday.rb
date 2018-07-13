#### happy_birthday.rb
#- Requirements
#  - Ask what year a person was born in, then the month, and then the day.
#    Figure out how old they are, and give them a big SPANK! for each
#    birthday they have had.
#  - Use user input for this one too
#- Clarifications/Advice
#  - Use the `Time` class for this
#  - Again, you’ll start by using `gets` to get the information you need
#    (year, month, day should be enough)
#  - Then you’ll want to calculate how old they are, and return a “SPANK”
#    for each one (one per line)
puts "Please input the time of you birth as accuratly as you can. You may input 0 if you don't know the exact time."
puts "Input the year you were born: "
year = gets.chomp
puts "Input the month you were born: "
month = gets.chomp
puts "Input the day you were born: "
day = gets.chomp
age = Time.new - Time.local(year, month, day)
((age / 31622400).to_i).times do
  puts "SPANK!"
end
