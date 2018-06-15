#### author\_age.rb
#- Requirements
#  - When run, it must print out the author's age in years
#- Advice
#  - For this one, make sure to remember that integer division rounds
#    down in Ruby, so to get a more accurate number add a decimal so you use float division instead
#  - Also leap years. Though for this one we don’t fully know how many there are, so use 365.25 days
#    per year to get it as close as possible!
puts "The author is " + (1_160_000_000 / 3600 / 24 / 365.25).to_s + " years old!"
