#### 99\_bob.rb
#- Requirements
#  - Write a program that prints out the lyrics
#   to that beloved classic, “99 Bottles of Beer on the Wall.”
#  - Here’s a handy <a href="http://www.99-bottles-of-beer.net/lyrics.html">reference</a>.
#    It must look like this (with the lyric match and the spacing).
#- Clarifications/Advice
#  - Main thing for this one is that the lyrics change when you get to one bottle of beer
#    left on the wall, so make sure you account for it!
bottles = ["99", "98", "97", "96", "95", "94", "93", "92", "91", "90", "89", "88", "87", "86", "85", "84", "83", "82", "81", "80", "79", "78", "77", "76", "75", "74", "73", "72", "71", "70", "69", "68", "67", "66", "65", "64", "63", "62", "61", "60", "59", "58", "57", "56", "55", "54", "53", "52", "51", "50", "49", "48", "47", "46", "45", "44", "43", "42", "41", "40", "39", "38", "37", "36", "35", "34", "33", "32", "31", "30", "29", "28", "27", "26", "25", "24", "23", "22", "21", "20", "19", "18", "17", "16", "15", "14", "13", "12", "11", "10", "9", "8", "7", "6", "5", "4", "3", "2", "1", "no more"]

bottles.each do |num|
  if num == "1"
    puts num.to_s.capitalize + " bottle of beer on the wall, " + num.to_s + " bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts
  elsif num == "2"
    puts num.to_s.capitalize + " bottles of beer on the wall, " + num.to_s + " bottle of beer."
    puts "Take one down and pass it around, 1 bottle of beer on the wall."
    puts
  elsif num == "no more"
    puts num.to_s.capitalize + " bottles of beer on the wall, " + num.to_s + " bottles of beer."
    puts"Go to the store and buy some more, 99 bottles of beer on the wall."
    puts
  else
    puts num.to_s.capitalize + " bottles of beer on the wall, " + num.to_s + " bottles of beer."
    puts "Take one down and pass it around, " + (num.to_i - 1).to_s + " bottles of beer on the wall."
    puts
  end
end
