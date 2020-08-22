require 'pry'
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
  songs.each_with_index { |song, index|
  puts "#{index+1}. #{song}"
  }
end

def play(songs)
  output = ""
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index { |song, index|
  #binding.pry
    if input == (index+1).to_s || input == song
      output = "Playing #{song}"
      break
    else
      output = "Invalid input, please try again"
    end
  }
  puts output
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  if input == "help"
    help
  elsif input == "list"
    list(songs)
  elsif input == "play"
    play(songs)
  elsif input == "exit"
    exit_jukebox
  else
    puts "Invalid command"
  end
end