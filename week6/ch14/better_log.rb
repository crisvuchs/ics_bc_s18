#### better_log.rb
#- Requirements
#  - The output from that last logger was kind of hard to read, and it would just
#    get worse the more you used it. It would be so much easier to read if it
#    indented the lines in the inner blocks. So, you’ll need to keep track of how
#    deeply nested you are every time the logger wants to write something. To do
#    this, use a global variable, which is a variable you can see from anywhere
#    in your code. To make a global variable, just precede your variable name
#    with `$`, like so: `$global`, `$nesting_depth`, and `$big_top_pee_wee`. In
#    the end, your logger should output code like this:
#    ~~~
#    Beginning "outer block"...
#      Beginning "some little block"...
#        Beginning "teeny-tiny block"...
#        ..."teeny-tiny block" finished, returning:lots of love
#      ..."some little block" finished, returning: 42
#      Beginning "yet another block"...
#      ..."yet another block" finished, returning: I love Indian food!
#    ..."outer block" finished, returning: true
#    ~~~
#- Clarifications/Advice
#  - The global variable is 100% necessary for this
$indent = ""
def log desc, &block
  $indent += "  "
  puts $indent + 'Beginning "' + desc + '"...'
  result = block.call
  $indent -= "  "
  puts $indent + '..."' + desc + '" finished, returning: ' + result.to_s
end
