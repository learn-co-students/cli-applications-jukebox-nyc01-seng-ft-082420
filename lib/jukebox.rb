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
  response = gets.strip
  song_name_hash = {}
  songs.each_with_index do |song, idx|
    num = (idx + 1).to_s
    # split = song.split(" - ")
    # song_name_hash[split[1]] = split[1]
    # song_name_hash[num] = split[1]
    song_name_hash[song] = song
    song_name_hash[num] = song
  end

  if song_name_hash.has_key?(response)
    puts "Playing #{song_name_hash[response]}"
  else
    puts "Invalid input, please try again"
    # play(songs)
  end
end

def list (songlist)
  songlist.each_with_index do |song, idx|
    num = (idx + 1).to_s
    puts num + ". " + song
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  until command == "exit"
    if command == "list"
      list(songs)
      command = gets.strip
    elsif command == "help"
      help
      command = gets.strip
    elsif command == "play"
      play(songs)
      command = gets.strip
    else
      puts "Invalid Command"
      command = gets.strip
    end
  end
  exit_jukebox
end
