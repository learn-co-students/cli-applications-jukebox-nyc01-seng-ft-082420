require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

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
  song_num = input.to_i - 1
  valid = false
  songs.each_with_index do |song, index|
    if song_num == index
      puts "Playing #{songs[index]}"
      valid = true
    elsif input == song
      puts "Playing #{song}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    input = gets.strip
    case input
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)    
    end
  end
end
