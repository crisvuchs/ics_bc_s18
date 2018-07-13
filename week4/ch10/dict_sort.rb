 #### dict_sort.rb
#- Requirements
#  - Your sorting algorithm is pretty good, sure. But there was always
#    that sort of embarrassing point you were hoping I’d just sort of
#    gloss over, right? About the capital letters? Your sorting
#    algorithm is good for general-purpose sorting, but when you sort
#    strings, you are using the ordering of the characters in your fonts
#    (called the ASCII codes) rather than true dictionary ordering. In
#    a dictionary, case (upper or lower) is irrelevant to the ordering.
#    So, make a new method to sort words (something like dictionary_sort).
#  - It's same as with sort, but must now be case insensitive.
#  - Must be recursive.
#- Clarifications/Advice
#  - Remember, though, that if I give your program words starting with
#  capital letters, it should return words with those same capital
#  letters, just ordered as you’d find in a dictionary.
def dictionary_sort array
  recursive_dict_sort array, []
end
def recursive_dict_sort unsort, sort
  if unsort.length <= 0
    return sort
  end
  small = unsort.pop
  new_unsort = []
  unsort.each do |tested_object|
    if tested_object.downcase < small.downcase
      new_unsort.push small
      small = tested_object
    else
      new_unsort.push tested_object
    end
  end
  sort.push small
  recursive_dict_sort new_unsort, sort
end
puts dictionary_sort(["hello", "Goodbye", "pizza", "chocolate", "hang glider", "pretzel", "random stuff", "Google", "Apple"])
