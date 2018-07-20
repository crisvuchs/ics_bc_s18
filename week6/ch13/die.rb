#### die.rb
#- Requirements
#  - Define the `Die#cheat` method to take in a number and make it the new top
#    facing number if possible, or deals with physics breaking ones (numbers not
#    1-6) in whatever (reasonable) way you choose
#- Clarifications/Advice
#  - Skeleton code was provided for this one
class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    @number_showing
  end

  def cheat num
    if num > 0 && num < 6
      @number_showing = num
    else
      exit
end
