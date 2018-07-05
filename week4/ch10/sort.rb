#### sort.rb
#- Requirements
#  - Beyond the basic requirement of properly sorting the provided array,
#    this one must be recursive. No points will be given if it's iterative.
#  - We've provided the wrapper function described in the book, we
#    recommend you work with it.
#- Clarifications/Advice
#  - The examples given in the sorting videos are meant to familiarize you
#    with sorting as a whole, not provide base code for you to adapt. You
#    can if you want to, but it's probably easier to not.
def sort(some_array)
  recursive_sort(some_array, [])
end
def find_min(unsorted)
  small = unsorted[0]
  index = 0
  unsorted.length.times do |i|
    if unsorted[i] < small
      small = unsorted[i]
      index = i
    end
  end
  return small, index
end
def recursive_sort(unsorted, sorted)
  if unsorted.length == 1
    sorted.push unsorted[0]
  else
    small, index = find_min(unsorted)
    sorted.push small
    unsorted.delete_at(index)
    recursive_sort(unsorted, sorted)
  end
end
puts sort(["hello", "goodbye", "pizza", "chocolate", "random stuff"])
