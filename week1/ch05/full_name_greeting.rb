#### full\_name\_greeting.rb
#- Requirements
#  - When run, it should:
#    - Ask for your first, middle, and last name (one by one)
#    - Then greet you using the full name provided
#- Advice
#  - Main thing to keep in mind for this one is to make sure to use `gets.chomp`
#    instead of just `gets`. That will make sure that you remove the newline character\
#    from each part of the name so you can string them together into the full name.
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello " + first + " " + middle + " " + last + ". I am so pleased to meet you!"
