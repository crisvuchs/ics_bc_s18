#### birthday_helper.rb
#- Requirements
#  - Write a program to read in names and birth dates from a text file.
#    It should then ask you for a name. You type one in, and it tells
#    you when that person’s next birthday will be (and, for the truly
#    adventurous, how old they will be). The input file should look
#    something like this:
#    ~~~
#    Christopher Alexander, Oct 4, 1936
#    Christopher Lambert, Mar 29, 1957
#    Christopher Lee, May 27, 1922
#    Christopher Lloyd, Oct 22, 1938
#    Christopher Pine, Aug 3, 1976
#    Christopher Plummer, Dec 13, 1927
#    Christopher Walken, Mar 31, 1943
#    The King of Spain, Jan 5, 1938
#    ~~~
#  - (That would be me Christopher Pine, not the young James T. Kirk;
#    I don’t care when he was born.) You’ll probably want to break each
#    line up and put it in a hash, using the name as your key and the
#    date as your value. In other words:
#    `birth_dates['The King of Spain'] = 'Jan 5, 1938'`
#- Clarifications/Advice
#  - There's three parts to this:
#    1. First, read in the file and turn it into a hash
#    2. Then, ask for user input for what name they’re looking for
#    3. If it was in the file, return the birthday, if not let the user
#    know you don’t have that one
#  - To make your life easier, we've provided the input file under `ch12
#    ` as `birthday_helper_intput.txt`.
#    - You can feel free to add more entries to it, but they must have
#      the same format.
#  - Main thing here is that I want you to use the same format he used
#    for the file you’d read it (it’ll make grading a lot easier)
birthDay = {}
File.read('birthday_helper_input.txt').each_line do |people|
  people = people.chomp
  startComma = 0
  while people[startComma] != ',' &&
    startComma < people.length
    startComma = startComma + 1
  end
  person = people[0..(startComma - 1)]
  date = people[-12..-1]
  birthDay[person] = date
end
puts 'Whose birthday would you like to know?'
person = gets.chomp
date = birthDay[person]
if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..5]
end
