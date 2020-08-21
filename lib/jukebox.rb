# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|songs, index| 
  puts "#{index+1}. #{songs}"}
end

def play(songs)
 puts "Please enter a song name or number:" 
 user_input = gets.strip
 if user_input.to_i >= 1 && user_input.to_i <= songs.length
   puts "Playing #{songs[user_input.to_i-1]}."
   elsif
   songs.include?(user_input)
   puts "Playing #{songs.find {|song| song == user_input}}"
 else
   puts "Invalid input, please try again."
 
 end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
  puts "Please enter a command:"
  user_input = gets.chomp
 case user_input
 when "list"
   list(songs)
   when "play"
     play(songs)
     when "help"
       help
       when "exit"
         exit_jukebox
         break
       else
         puts "Invalid entry"
  end
 end
end
