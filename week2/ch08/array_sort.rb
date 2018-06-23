#### array\_sort.rb
#- Requirements
#  - Write the program we talked about at the
#    beginning of this chapter, one that asks us to type as many words as we
#    want (one word per line, continuing until we just press Enter on an
#    empty line) and then repeats the words back to us in alphabetical order.
#- Clarifications/Advice
#  - Make sure to test your program thoroughly; for example, does hitting `Enter`
#    on an empty line always exit your program? Even on the first line? And the
#    second?
#  - There’s a lovely array method that will give you a sorted version of an
#    array: `.sort`. Use it!
wordArray = []
puts "Input as many words as you like to be sorted:"
doneInput = false
while !doneInput
  newWord = gets.chomp
  if newWord != ""
    wordArray.push(newWord)
  else
    doneInput = true
  end
end
puts "The words sorted in order are:"
puts wordArray.sort
