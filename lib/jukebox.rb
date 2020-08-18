# Add your code here

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
  input = gets.strip
  songs.each_with_index do |song, index|
    if song == input or (index + 1 ) == input.to_i
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  while input != "exit"
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    end
    return run(songs)
  end
  exit_jukebox
end
  