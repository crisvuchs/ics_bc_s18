#### table\_of\_contents.rb
#- Requirements
#  - Here’s something for you to do in order to play around
#   more with center, ljust, and rjust: write a program that will display a table of
#   contents so that it looks like this:
#```
#				   	Table of Contents
#Chapter 1: Getting Started				page  1
#Chapter 2: Numbers				    	page  9
#Chapter 3: Letters				    	page 13
#```
#- Clarifications/Advice
#  - Make sure to align it properly. A good tip is to make sure that each of the lines is
#    the same length, which can be ensured by making sure that the arguments to `.center`,
#    `.ljust`, and `.rjust` add up to the same total
#  - p.s. I won't penalize you for using your favorite book's contents instead of
#    _Learn to Program_'s. (It was boring seeing the same three chapters over and over again.)
title1 = "Table of Contents"
chapter1 = "Chapter 1: Getting Started"
c1page = "page 1"
chapter2 = "Chapter 2: Numbers"
c2page = "page 9"
chapter3 = "Chapter 3: Letters"
c3page = "page 13"
puts title1.center(60)
puts (chapter1.ljust(30) + c1page.rjust(30))
puts (chapter2.ljust(30) + c2page.rjust(30))
puts (chapter3.ljust(30) + c3page.rjust(30))
