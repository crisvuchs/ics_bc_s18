#### grandfather_clock.rb
#- Requirements
#  - Write a method that takes a block and calls it once for
#    each hour that has passed today. That way, if I were to pass in the block:
#    ~~~
#    do
#      puts 'DONG!'
#    end
#    ~~~
#  - it would chime (sort of) like a grandfather clock. Test your method out
#    with a few different blocks.
#- Clarifications/Advice
#  - A good starting point to figuring out how many times to chime is
#    `Time.new.hour`. You will definitely have to do something with that to get
#    it from a 0-23 to a 1-12 range though.
#  - After that, make sure to call the passed in block that many times
def grandfather_clock &block
  current_hour = Time.new.hour
  if current_hour >= 13
    current_hour = current_hour - 12
  end
  if current_hour == 0
  	current_hour = 12
  end
  current_hour.times do
  	block.call
  end
end
grandfather_clock do
  puts "DONG!"
end
