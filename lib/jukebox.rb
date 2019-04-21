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
  puts "I accept the following commands:
  \n- help : displays this help message
  \n- list : displays a list of songs you can play
  \n- play : lets you choose a song to play
  \n- exit : exits this program"
end

def list(songs)
  songs.each_with_index.map do |song_title, index|
     puts "#{index + 1}. #{song_title}"
   end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
    if (1..9).include?(user_input.to_i)
      puts "Playing #{songs[user_input.to_i - 1]}"
    elsif songs.include?(user_input.to_s)
      puts "Playing #{songs.to_s}"
    else
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.downcase.chomp
    if command == "list"
      list(songs)
    elsif command == "help"
      help
    elsif command == "play"
      list(songs)
      play(songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
