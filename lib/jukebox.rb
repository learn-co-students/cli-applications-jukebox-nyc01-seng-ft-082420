require 'pry'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  index = user_input.to_i - 1
  
  if songs[index] == nil || songs.none?(user_input)
    puts "Invalid input, please try again"
  end
  
  if index >= 0 && user_input.length == 1
    puts "Playing #{songs[index]}"
  end
  
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  
  case user_input
  
  when "exit"
    exit_jukebox
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  end
  
end