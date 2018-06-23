#### 99\_bob.rb
#- Requirements
#  - Write a program that prints out the lyrics
#   to that beloved classic, “99 Bottles of Beer on the Wall.”
#  - Here’s a handy <a href="http://www.99-bottles-of-beer.net/lyrics.html">reference</a>.
#    It must look like this (with the lyric match and the spacing).
#- Clarifications/Advice
#  - Main thing for this one is that the lyrics change when you get to one bottle of beer
#    left on the wall, so make sure you account for it!
a = 99
i = 99
while a.to_i >= 1
  puts i.to_s.capitalize + " bottles of beer on the wall, "  + i.to_s + " bottles of beer."
  if i == 1
    i = "no more"
  elsif i != 0
    i = i.to_i - 1
    a = a.to_i - 1
  end
  if i == -1
    i = 99
    puts "Go to the store and buy some more, " + i.to_s + " bottles of beer on the wall."
    puts
    break
  end
  puts "Take one down and pass it around, " + i.to_s + " bottles of beer on the wall."
  puts
end
