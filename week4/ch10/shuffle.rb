#### shuffle.rb
#- Requirements
#  - Now that you’ve finished your new sorting algorithm, how about
#    the opposite? Write a `shuffle` method that takes an array and
#    returns a totally shuffled version. As always, you’ll want to
#    test it, but testing this one is trickier: How can you test to
#    make sure you are getting a perfect shuffle? What would you
#    even say a perfect shuffle would be? Now test for it.
#  - As with the sorting ones, it must be recursive.
#- Clarifications/Advice
#  - Think back to the last time we worked with randomness...
def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle unshuffled, shuffled
  if(unshuffled.length <= 0) #if only one word is entered
    return shuffled.push unshuffled
  end
  rand_array = rand(unshuffled.length)
  counter = 0
  updated_array = []
  unshuffled.each do |check|
    if(counter == rand_array)
      shuffled.push check
    else
      updated_array.push check
    end
      counter += 1
  end
  shuffled
  recursive_shuffle updated_array, shuffled
end
puts 'Write words you want to be shuffled.'
list = []
  while true
    word = gets.chomp
    if (word != ''.chomp)
      list.push word
    else
    break
    end
  end
puts ''
puts 'The word(s) shuffled are:'
puts(shuffle(list))
