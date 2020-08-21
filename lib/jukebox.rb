# Add your code here

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


def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  valid = false
  songs.each_with_index do |song, name|
    if (choice.to_i - 1 == name)
      puts "Playing #{songs[name]}"
    elsif (choice == song)
      puts "Playing #{choice}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end


def list(songs)
  songs.each_with_index{|songs, index| puts "#{index + 1}. #{songs}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  if input == "exit"
    exit_jukebox
  
  elsif input == "help"
    help
  
  elsif input == "list"
    list(songs)
  
  else input == "play"
    play(songs)
  end 
end







