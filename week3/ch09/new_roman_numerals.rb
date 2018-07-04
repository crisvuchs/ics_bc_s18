#### new\_roman\_numerals.rb
#- Requirements
#  - Eventually, someone thought it would be terribly clever
#    if putting a smaller number before a larger one meant
#    you had to subtract the smaller one. As a result of this
#    development, you must now suffer. Rewrite your previous
#    method to return the new-style Roman numerals so when
#    someone calls `roman_numeral 4`, it should return 'IV'.
#- Clarifications/Advice
#  - This one is really just a harder version of the previous
#    one with more symbols to account for, ‘IV’ for 4, ‘IX’
#    for 9, and so on for 40 and 90, and 400 and 900.
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
puts(roman_numeral(1999))
