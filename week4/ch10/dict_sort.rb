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
def dict_sort(some_array)
  recursive_dict_sort(some_array, [])
end

def find_min(unsorted)
  small = unsorted[0]
  index = 0
  unsorted.length.times do |i|
    if unsorted[i].downcase < small.downcase
      small = unsorted[i]
      index = i
    end
  end
  return small, index
end

def recursive_dict_sort(unsorted, sorted)
  if unsorted.length == 1
    sorted.push unsorted[0]
  else
    small, index = find_min(unsorted)
    sorted.push small
    unsorted.delete_at(index)
    recursive_dict_sort(unsorted, sorted)
  end
end
puts dict_sort(["hello", "goodbye", "pizza", "chocolate", "hang glider", "pretzel", "random stuff"])
