#### table\_of\_contents.rb
#- Requirements
#  - Rewrite your table of contents program from chapter 6. Start the program
#    with an array holding all of the information for your table of contents
#    (chapter names, page numbers, and so on). Then print out the information
#    from the array in a beautifully formatted table of contents.
#- Clarifications/Advice
#  - Main thing is to actually use an array to store your strings, don’t just
#    copy paste the old code
#  - A possible misinterpretation is to just literally store all the variables
#    you'll need in an array like `stuff_i_will_need = ["Table of Contents", 1,
#    "Getting Started", 1, 2, "Numbers", 9]`. But if you do that, you'll notice
#    that it doesn't make the code any easier to write. Programmers don't
#    usually just store a bunch of different stuff in an array just like that!
#    Instead, you'll have an array containing the first X, the second X, and so
#    on. For example, `chapter_names = ["Getting Started", "Numbers", "Letters"]`
#    contains the first chapter name, the second name, etc. Or if you want to be
#    clever, you can use a nested array: `chapters = [["Getting Started", 1],
#    ["Numbers", 9], ["Letters", 13]]`. Either way, you'll now be able to do
#    everything in an elegant loop (use the `.each` or `.each_with_index` method
#    -- google the latter). _That's_ the beauty of arrays.
width = 60
tableOfContents = [["Chapter 1: Getting Started", "page 1"], ["Chapter 2: Numbers", "page 9"], ["Chapter 3: Letters", "page 13"]]
puts "Table of Contents".center(width)
tableOfContents.each do |pageTitle|
  puts (pageTitle[0].ljust(width/2) + pageTitle[1].rjust(width/2))
end
