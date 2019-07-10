def help
  puts "I accept the following commands:
  \n- help : displays this help message
  \n- list : displays a list of songs you can play
  \n- play : lets you choose a song to play
  \n- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index.map do |song, index|
     puts "#{index + 1}. #{song}"
   end
end


def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
    if my_songs.keys.include?(user_input.to_s)
      puts "Playing #{user_input}"
      system 'open ' << my_songs[user_input]
    else
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.downcase.chomp
    if command == "list"
      list(my_songs)
    elsif command == "help"
      help
    elsif command == "play"
      list(my_songs)
      play(my_songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
