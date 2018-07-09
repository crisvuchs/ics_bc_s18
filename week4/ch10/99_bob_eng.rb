#### 99_bob_eng.rb
#- Requirements
#  - Using `english_number` and your old program on page 49,
#    write out the lyrics to this song the *right* way this
#    time. Punish your computer: have it start at 9999.
#    (Don’t pick a number too large, though, because writing
#    all of that to the screen takes your computer quite a
#    while. A hundred thousand bottles of beer takes some
#    time; and if you pick a million, you’ll be punishing
#    yourself as well!)
#- Clarifications/Advice
#  - You"ve done this one before, just copy paste in your
#    completed `english_number.rb` code, your old 99 bottles
#    of beer code, and modify it to display the lyrics using
#    english numbers by calling the function.
def english_number num
  if num < 0
    return "Please enter a number that isn\"t negative."
  end
  if num == 0
    return "zero"
  end
  num_string = ""
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  zillions = [["hundred", 2], ["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12], ["quadrillion", 15], ["quintillion", 18], ["sextillion", 21], ["septillion", 24], ["octillion", 27], ["nonillion", 30], ["decillion", 33], ["undecillion", 36], ["duodecillion", 39], ["tredecillion", 42], ["quattuordecillion", 45], ["quindecillion", 48], ["sexdecillion", 51], ["septendecillion", 54], ["octodecillion", 57], ["novemdecillion", 60], ["vigintillion", 63], ["googol", 100]]
  leftover = num
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = leftover / zil_base
    leftover = leftover - write*zil_base
    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + " " + zil_name
      if leftover > 0
        num_string = num_string + " "
      end
    end
  end
  write = leftover / 10
  leftover = leftover - write * 10
  if write > 0
    if ((write == 1) and (leftover > 0))
      num_string = num_string + teenagers[leftover-1]
      leftover = 0
    else
      num_string = num_string + tens[write-1]
    end
    if leftover > 0
      num_string = num_string + "-"
    end
  end
  write = leftover
  leftover = 0
  if write > 0
    num_string = num_string + ones[write-1]
  end
  num_string
end
bottles = [*0...1000000].reverse
bottles.each do |num|
  if num == 1
    puts english_number(num).capitalize + " bottle of beer on the wall, " + english_number(num) + " bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts
  elsif num == 2
    puts english_number(num).capitalize + " bottles of beer on the wall, " + english_number(num) + " bottle of beer."
    puts "Take one down and pass it around, " + english_number(num - 1) + " bottle of beer on the wall."
    puts
  elsif num == 0
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, " + english_number(bottles[0] + 1) + " bottles of beer on the wall."
    puts
  else
    puts english_number(num).capitalize + " bottles of beer on the wall, " + english_number(num) + " bottles of beer."
    puts "Take one down and pass it around, " + english_number(num.to_i - 1) + " bottles of beer on the wall."
    puts
  end
end
