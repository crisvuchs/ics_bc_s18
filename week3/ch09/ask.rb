#### ask.rb
#- Requirements
#  - That `ask` method I showed you was OK, but I bet you could do better.
#    Try to clean it up by removing the answer variable. You’ll have to use
#    `return` to exit from the loop. (Well, it will get you out of the whole
#    method, but it will get you out of the loop in the process.) How do you
#    like the resulting method? I usually try to avoid using `return` (a
#    personal preference), but I might make an exception here.
#- Clarifications/Advice
#  - Make sure to account for the three distinct cases:
#    - Answer was ‘yes’
#    - Answer was ‘no’
#    - Answer was anything else
def ask questions
  while true
    puts questions
    answer = gets.chomp.upcase
    return answer == "YES"
    puts "Please answer with yes or no!"
  end
end
