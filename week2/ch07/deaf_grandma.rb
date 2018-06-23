#### deaf\_grandma.rb
#- Requirements
#  - Whatever you say to Grandma (whatever you type in), she
#    should respond with this:
#		- `HUH?! SPEAK UP, SONNY!`
#  - unless you shout it (type in all capitals). If you shout,
#    she can hear you (or at least she thinks so) and yells back:
#		- `NO, NOT SINCE 1938!`
#  - To make your program really believable, have Grandma shout a
#    different year each time, maybe any year at random between 1930 and 1950.
#  - You can’t stop talking to Grandma until you shout BYE.
#- Clarifications/Advice
#  - Don’t forget about `.chomp!` 'BYE' with an `Enter` at the end is not the same as 'BYE' without one!
#  - Try to think about what parts of your program should happen
#    over and over again. All of those should be in your while loop.
#  - People often ask, “How can I make rand give me a number in a range not starting at zero?”
#    But you don’t need it to. Is there something you could do to the number rand returns to you?
sayBye = false
puts "HEY SONNY HOW ARE YOU DOING?"
while sayBye == false
  input = gets.chomp
  if input != input.upcase
    puts "WHAT?!?! I CAN'T HEAR YOU SPEAK UP SONNY BOY!!"
  elsif input == "BYE"
    sayBye = true
  else
    puts "NO, NOT SINCE " + (1930 + (rand(21))).to_i.to_s + "!"
  end
end
puts "GOODBYE SONNY!"
