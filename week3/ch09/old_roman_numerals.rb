#### old\_roman\_numerals.rb
#- Requirements
#  - In the early days of Roman numerals, the Romans didn’t
#    bother with any of this new-fangled subtraction “IX”
#    nonsense. No sir, it was straight addition, biggest to
#    littlest—so 9 was written “VIIII,” and so on. Write a
#    method that when passed an integer between 1 and 3000
#    (or so) returns a string containing the proper oldschool
#    Roman numeral. In other words, `old_roman_numeral 4`
#    should return 'IIII'. Make sure to test your method on a
#    bunch of different numbers. Hint: Use the integer division
#    and modulus methods on page 32.
#  - For reference, these are the values of the letters used:
#    ~~~
#      I = 1 V = 5 X = 10 L = 50
#      C = 100 D = 500 M = 1000
#    ~~~
#- Clarifications/Advice
#  - This one is tricky, both roman ones are really. Things to
#    keep in mind are to make sure you’re printing the largest
#    numerals first, and to not overcount. That is, entering
#    ‘5’ should return ‘V’, not ‘VIIIII’.
def old_roman_numeral num
  romannum = ""
  romannum = romannum + "M" * (num / 1000)
  romannum = romannum + "D" * (num % 1000 / 500)
  romannum = romannum + "C" * (num % 500 / 100)
  romannum = romannum + "L" * (num % 100 / 50)
  romannum = romannum + "X" * (num % 50 / 10)
  romannum = romannum + "V" * (num % 10 / 5)
  romannum = romannum + "I" * (num % 5 / 1)
  romannum
end
