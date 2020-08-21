require "pry"
def run(song)
  puts "Please enter a command:"
  choice = gets.chomp
  if choice == "help"
    help
  elsif choice == "list"
    list(song)
  elsif choice == "play"
    song = list(song)
    play(song)
  elsif choice == "exit"
    exit
  else
    puts "Invalid command"
  end
end

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song)
  song.each_with_index {|v, i|
    puts "#{i+1}. #{v}"
  }
end

def play(song)
  result = ""
  puts "Please enter a song name or number:"
  name = gets.strip
  song.each_with_index { |v, i|
    if name == v || name == (i+1).to_s
      result = "playing #{v}"
      break
    else
      result = "Invalid input, please try again"
    end
  }
  puts result
end

def exit_jukebox
  puts "Goodbye"
end