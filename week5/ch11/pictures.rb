#### pictures.rb
#- Requirements
#  - Adapt the picture-downloading/file-renaming program to your computer by adding
#    some safety features to make sure you never overwrite a file. A few methods
#    you might find useful are `File.exist?` (pass it a filename, and it will return
#    `true` or `false`) and `exit` (like if `return` and Napoleon had a baby—it kills
#    your program right where it stands; this is good for spitting out an error
#    message and then quitting).
#- Clarifications/Advice
#  - We've provided you with skeleton code for it, you'll just need to adapt the
#    Directory stuff (more instructions for that are in the comments), and add the
#    file overwrite check.
#  - For the overwrite check, it should detect if a file would be overwritting an
#    existing one, and prompt the user to see if they want to continue.


### In this next line you want to give it the file path of where you want the
###  pictures moved. I recommend using an absolute filepath.
###
### An example for mac could be '/Users/username/Desktop/pic_dst'
### An example for PC could be 'C:/Users/username/Desktop/pic_dst'
Dir.chdir "/home/clvasiliu/Desktop/code/ics_bc_s18/Processed_Pictures"

# First we find all of the pictures to be moved.
### In the next line you want the source
### Note the '/*.jpg' at the end, this is going to grab anything in the
###  final folder that ends in '.jpg' and stash it in an array.
###
### An example for mac could be '/Users/username/Desktop/pic_src/**/*.{JPG,jpg}'
### An example for PC could be 'C:/Users/username/Desktop/pic_src/**/*.{JPG,jpg}'
pic_names = Dir["/home/clvasiliu/Desktop/code/ics_bc_s18/Unprocessed_Pictures/**/*.{JPG,jpg}"]

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
#  though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  # Now where were we? Oh, yeah...
  if File.exist? new_name
    puts ""
    puts "Fatal error. Duplicate name of " + new_name + " cause program to quit prematurely."
    exit
  else
    print '.' # This is our "progress bar".
    File.rename name, new_name
    # Finally, we increment the counter.
    pic_number += 1
  end
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'
