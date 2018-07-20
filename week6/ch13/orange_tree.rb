#### orange_tree.rb
#- Requirements
#  - Implementations and details can vary quite a bit, but here are the required
#    methods:
#    - `initialize`
#      - Creates your tree, initializes your variables
#    - `one_year_passes`
#      - Your tree grows older:
#        - It grows in height
#        - Sprouts some number of oranges after a certain age
#        - Dies after some number of years
#    - `height`
#      - Tells you how tall your tree is
#    - `age`
#      - Tells you how old your tree is
#    - `orange_count`
#      - Tells you how many oranges are hanging from your tree
#    - `pick_orange`
#      - If there’s oranges to be picked, gives you one
#- Clarifications/Advice
#  - To make sure you get them all, we've given skeleton code with them there.
#    You just have to define them
class OrangeTree
  def initialize
    @age = 0
    @tall = 0
    @fruit = 0
    puts 'A new Orange Tree is planted.'
  end

  def one_year_passes
    puts 'One year passes'
    @age = @age + 1
    @tall = @tall + 1
    @fruit = 0
  end

  def height
    puts 'The tree is ' + @tall.to_s + ' feet tall.'
  end

  def age
    if @age > 0
      @fruit = @age*10
    else
      @fruit = 0
  end

  def orange_count
      puts 'The tree has ' + @fruit.to_s + ' oranges.'
  end

  def pick_orange
    if @fruit < 1
        puts 'Sorry, there are no oranges to pick this year.'
    else
      puts 'You pick an orange from the tree. It\'s very delicious.'
      @fruit = @fruit - 1
  end
end
