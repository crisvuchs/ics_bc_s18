#### billion_seconds.rb
#- Requirements
#  - Find out the exact second you were born (if you can). Figure out when you
#    will turn (or perhaps when you did turn) one billion seconds old. Then go
#    mark your calendar.
#  - Relatively simple conceptually, little harder to implement. You could
#    just hardcode it, but we’ve used inputs for a while now, so make it a
#    generic one that `gets` all the information it needs, adds a billion
#    seconds to it, and informs the user when they’ll be a billion seconds old.
#- Clarifications/Advice
#  - Use the `Time` class for this
puts "Please input the time of you birth as accuratly as you can. You may input 0 if you don't know the exact time."
puts "Input the year you were born: "
year = gets.chomp
puts "Input the month you were born: "
month = gets.chomp
puts "Input the day you were born: "
day = gets.chomp
puts "Input the hour you were born: "
hour = gets.chomp
puts "Input the minute you were born: "
minutes = gets.chomp
puts "Input the second you were born: "
seconds = gets.chomp
birthday = Time.local(year, month, day, hour, minutes, seconds)
new_date = birthday + 1000000000
puts "You will be one billion seconds old at #{new_date}."
