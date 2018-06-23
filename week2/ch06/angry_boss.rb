#### angry\_boss.rb
#- Requirements
#  - Angry boss. Write an angry boss program that rudely asks what you want.
#    Whatever you answer, the angry boss should yell it back to you and then fire you.
#     For example, if you type in I want a raise, it should yell back like this:
#	  - `WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!`
#- Clarifications/Advice
#  - Make sure they shout everything, including your request.
puts "WAD IN DA BLOODY 'ELL DO YOU WANT NOW??!?!?!?!?!?"
answer = gets.chomp
puts "WAD DO YOU MEAN " + "\"" + answer.upcase + "\"" + "??!" + "GET DA 'ELL OUT O' 'ERE!! YOUR FIRED!'"
