#### deaf\_grandma\_extended.rb
#- Requirements
#	- What if Grandma doesn’t want you to leave? When you shout BYE,
#   she could pretend not to hear you. Change your previous program
#   so that you have to shout BYE three times in a row.
#	- Make sure to test your program: if you shout BYE three times but
#   not in row, you should still be talking to Grandma.
#- Clarifications/Advice
#  - It's an extension of the previous, so I'd recommend you copy over
#    your previous code and modify it instead of starting over.
#  - Main thing that trips people up is not making sure that the three
#    "BYE"s are given in a row. A common mistake was to misinterpret it
#    as exiting on "BYE BYE BYE", but that’s not quite right. For the
#    program to exit you should have to type in "BYE" as your response
#    three times, with Grandma pretending not to hear you the first two
#    times, before giving up and saying goodbye on the third.
sayBye = false
puts "HEY SONNY HOW ARE YOU DOING?"
while sayBye == false
  input = gets.chomp
  if input == "BYE"
    puts "WHAT SPEAK UP!!"
    input = gets.chomp
    if input == "BYE"
      puts "WHAT SPEAK UP!!"
      input = gets.chomp
      if input == "BYE"
        puts "GOODBYE SONNY!"
        sayBye = true
      end
    end
  elsif input != input.upcase
    puts "WHAT?!?! I CAN'T HEAR YOU SPEAK UP SONNY BOY!!"
  else
    puts "NO, NOT SINCE " + (1930 + (rand(21))).to_i.to_s + "!"
  end
end
