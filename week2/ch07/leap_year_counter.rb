#### leap\_year\_counter.rb
#- Requirements
#  - Write a program that asks for a starting year and an ending
#    year and then puts all the leap years between them (and including them,
#    if they are also leap years). Leap years are years divisible by 4 (like
#    1984 and 2004). However, years divisible by 100 are not leap years (such as
#    1800 and 1900) unless they are also divisible by 400 (such as 1600 and
#    2000, which were in fact leap years). What a mess!
#- Clarifications/Advice
#  - Key for this one is keeping the conditions needed for a year to be a leap
#    year in mind. It has to be divisible by 400, or divisible by 4 and not by
#    100. It’s easy to get mixed up, so double check by trying it out and comparing
#    with this <a href="http://www.onlineconversion.com/leapyear.htm">site</a>

puts "Input a starting year: "
startYear = gets.chomp.to_i
while startYear < 1000
  puts "Try Again."
  puts "Input a starting year: "
  startYear = gets.chomp.to_i
end
puts "Input an ending year: "
endYear = gets.chomp.to_i
while endYear < 1000
  puts "Try Again."
  puts "Input a ending year: "
  endYear = gets.chomp.to_i
end
puts "FINDING LEAP YEARS..."
while startYear != endYear + 1
  if startYear % 4 == 0 && startYear % 100 != 0 || startYear % 400 == 0
    puts startYear
  end
  startYear += 1
end
