#### roman_to_integer.rb
#- Requirements
#  - Party like it’s `roman_to_integer "mcmxcix'`! Come on, you knew it was
#    coming, didn’t you? It’s the other half of your `roman_numeral 1999`
#    method. Make sure to reject strings that aren’t valid Roman numerals.
#- Clarifications/Advice
#  - You're only required to make it work with old roman numerals, but for
#    an extra challenge adapt it to work with the modern ones too!
def roman_to_integer roman
  digit_vals = {"i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100, "d" => 500, "m" => 1000}
  sum = 0
  previousNum = 0
  location = roman.length - 1
  while location >= 0
    c = roman[location].downcase
    location = location - 1
    val = digit_vals[c]
    if !val
      puts "This is not a valid roman numeral!"
      return
    end
    if val < previousNum
      val = val * -1
    else
      previousNum = val
    end
    sum = sum + val
  end
  sum
end
puts(roman_to_integer('mcmxcix'))
