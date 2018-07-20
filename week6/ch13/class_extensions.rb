#### class_extensions.rb
#- Requirements
#  - You have to extend the following classes with the following methods:
#    - `Array#shuffle`
#      - Get your old `shuffle` method, and modify it to now be an
#        extension of the `Array` class
#      - That means that you should be able to call `['a', 2, 5, 'c',
#        'blah', 180].shuffle` and receive a shuffled version of the array.
#    - `Integer#factorial`
#      - Make `factorial` a method of the integer class
#      - This means that calling `5.factorial` should return `120`
#    - `Integer#to_roman`
#      - Make your modern `roman_numeral` a method of the Integer class
#      - This means calling `4.to_roman` should return `"IV"`, and `86.to_roman`
#        should return `"LXXXVI"`
#- Clarifications/Advice
#  - You've already written these, so all you need to do is make them part of
#    their respective classes and modify them a bit to make it work
#    - You'll have to make use of `self` for that
class Array
  def shuffle some_array
    recursive_shuffle some_array, []
  end
  def recursive_shuffle unshuffled, shuffled
    if(unshuffled.length <= 0)
      return shuffled.push unshuffled
    end
    rand_array = rand(unshuffled.length)
    counter = 0
    updated_array = []
    unshuffled.each do |check|
      if(counter == rand_array)
        shuffled.push check
      else
        updated_array.push check
      end
        counter += 1
    end
    shuffled
    recursive_shuffle updated_array, shuffled
  end
  while true
      word = gets.chomp
    if (word != ''.chomp)
      list.push word
    else
    break
    end
  end
end
class Integer
  # Your factorial and to_roman methods go here
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  puts num.factorial
  def roman_numeral number
    thousand = (number / 1000)
    hundreds = (number % 1000 / 100)
    tens = (number % 100 / 10)
    ones = (number % 10)
    romannum = 'M' * thousand
    if hundreds == 9
      romannum = romannum + "CM"
    elsif hundreds == 4
      romannum = romannum + "CD"
    else
      romannum = romannum + "D" * (number % 1000 / 500)
      romannum = romannum + "C" * (number % 500 / 100)
    end
    if tens == 9
      romannum = romannum + "XC"
    elsif tens == 4
      romannum = romannum + "XL"
    else
      romannum = romannum + "L" * (number % 100 / 50)
      romannum = romannum + "X" * (number % 50 / 10)
    end
    if ones == 9
      romannum = romannum + "IX"
    elsif ones == 4
      romannum = romannum + "IV"
    else
      romannum = romannum + "V" * (number % 10 / 5)
      romannum = romannum + "I" * (number % 5 / 1)
    end
    romannum
  end
end
