#### playlist.rb
#- Requirements
#  - Build your own playlist. For this to work, you need to have some music ripped
#    to your computer in some format. We’ve ripped a hundred or so CDs, and we keep
#    them in directories something like `music/genre/artist_and_cd_name/track_number.ogg`.
#    (I’m partial to the `.ogg` format, though this would work just as well with `.mp3s`
#    or whatever you use.) Building a playlist is easy. It’s just a regular text file (no
#    YAML required, even).
#  - Each line is a filename, like this: `music/world/Stereolab--Margarine_Eclipse/track05.ogg`
#  - What makes it a playlist? Well, you have to give the file the `.m3u` extension, like
#    `playlist.m3u` or something. And that’s all a playlist is: a text file with an `.m3u`
#    extension.
#  - So, have your program search for various music files and build you a playlist. Use
#    your `shuffle` method on page 75 to mix up your playlist. Then check it out in your
#    favorite music player (Winamp, MPlayer, and so on)!
#- Clarifications/Advice
#  - Make sure to actually write out the playlist you create into a file somewhere so
#    you can play it.
### Copy in your shuffle method first
def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle unshuffled, shuffled
  if(unshuffled.length <= 0) #if only one word is entered
    return shuffled.push unshuffled
  end
  rand_array = rand(unshuffled.length)
  counter = 0
  updated_array = []
  unshuffled.each do |check|
    if(counter == rand_array)
      shuffled.push check
    else
      updated_array.push check
    end
      counter += 1
  end
  shuffled
  recursive_shuffle updated_array, shuffled
end

### Now use it to build your playlist:
Dir.chdir "/home/clvasiliu/Desktop/code/ics_bc_s18/week5/ch11/music"
songs = shuffle(Dir["/home/clvasiliu/Desktop/code/ics_bc_s18/week5/ch11/music/*.{mp3,mpeg}"])
text_file = "playlist.txt"
File.open text_file, "w" do |f|
  f.write songs.join("\n")
end
File.rename text_file, "playlist.m3u"
