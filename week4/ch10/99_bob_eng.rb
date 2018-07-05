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
#  - You've done this one before, just copy paste in your
#    completed `english_number.rb` code, your old 99 bottles
#    of beer code, and modify it to display the lyrics using
#    english numbers by calling the function.
def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0
  num_string = ''
  ones_place = %w[one two three four five six
                  seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty
                  sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen
                 fourteen fifteen sixteen seventeen eighteen nineteen]
  left = number
  write = left / 1000000000000
  left -= write * 1000000000000
  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string += ' '
    end
  end
  write = left / 1000000000
  left -= write * 1000000000
  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string += ' '
    end
  end
  write = left / 1000000
  left -= write * 1000000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' millon'
    if left > 0
      num_string += ' '
    end
  end
  write = left / 1000
  left -= write * 1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string += ' '
    end
  end
  write = left / 100
  left -= write * 100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string += ' '
    end
  end
  write = left / 10
  left -= write * 10
  if write > 0
    if (write == 1) && (left > 0)
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
    end
    if left > 0
      num_string += '-'
    end
  end
  write = left
  left = 0
  if write > 0
    num_string += ones_place[write - 1]
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
    puts "Go to the store and buy some more, " + bottles[0] + " bottles of beer on the wall."
    puts
  else
    puts english_number(num).capitalize + " bottles of beer on the wall, " + english_number(num) + " bottles of beer."
    puts "Take one down and pass it around, " + english_number(num.to_i - 1) + " bottles of beer on the wall."
    puts
  end
end
