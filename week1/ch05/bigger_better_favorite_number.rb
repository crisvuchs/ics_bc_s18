#### bigger\_better\_favorite\_number.rb
#- Requirements
#  - When run, it should:
#    - As for your favorite number
#    - Add 1 to it, and suggest this as a better favorite number (the more tactful the better)
#- Advice
#  - `gets.chomp` returns a string, so don't forget to use `.to_i` and `.to_s` as needed!
puts "What is your favorite number?"
favoriteNum = gets
puts "But " + (favoriteNum.to_i + 1).to_s+ " is better! This should be your favorite number!"
