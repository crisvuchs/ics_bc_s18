#### array_sum.rb
#- Requirements
#  - Fill in the function such that it returns the sum of all
#    the elements in the array.
#- Clarifications/Advice
#  - This one is pretty similar to the previous one, but we're
#    not providing a `len` argument for it. Can you think of a
#    way to work around that?
def array_sum(array)
  if array.length == 1
    array[0]
  else
    array.pop + array_sum(array)
  end
end
puts array_sum [4, 6, 12, 223]
