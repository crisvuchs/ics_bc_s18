#### array_min.rb
#- Requirements
#  - Fill in the function such that it returns the minimum
#  value stored in the array.
#- Clarifications/Advice
#  - Think very carefully about the base case we gave you.
#    In what situation would you just return the first
#    element in the array? Once you have that, what would
#    you then have to do in the `else` case to simplify
#    the problem with each recursion until you get there?
def array_min(array, len)
 if len == 1
   array[0]
 else
   first = array.pop
   rest = array_min(array, len - 1)
   if first < rest
     first
   else
     rest
   end
 end
end
puts array_min([9, 2, 5, 4], 4)
