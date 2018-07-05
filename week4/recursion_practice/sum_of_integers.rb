#### sum_of_integers.rb
#- Requirements
#  - Fill in the fuction such that it returns the sum of all
#    positive integers between 0 and n.
#- Clarifications/Advice
#  - You do not have to worry about negative inputs, but are
#   free to modify the function to guard against it as an optional challenge.
def sum_of_integers(n)
  if n == 0
    n
  else
    n + sum_of_integers(n - 1)
  end
end
puts sum_of_integers 5
