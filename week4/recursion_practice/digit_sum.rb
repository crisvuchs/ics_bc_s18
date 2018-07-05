#### digit_sum.rb
#- Requirements
#  - Fill in the function such that it returns the sum of the digits of the
#    passed in number
#- Clarifications/Advice
#  - Think carefully about what the second argument needs to be to ensure
#    the correct output is returned.
def digit_sum(num, digits)
  if digits == 1
    num
  else
    num % 10 + digit_sum(num / 10, digits - 1)
  end
end

puts digit_sum 1234, 4
