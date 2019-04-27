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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help(help)
  users_response = gets.chomp
    users_response = "help"

   puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
  help
end

def list(songs)
   songs.each_with_index |song, index|
    puts "#{index+1} #{song}"
  end
 end

list(songs_array)


def play(songs)
  puts "Please enter a song name or number:"
    users_response = gets.chomp

  if [1..9].to_a.include? (users_response.to_i)
        puts "Playing (#{songs}(users_response.to_i)"
        elsif songs.include? (users_response)
        puts "Playing #{songs}"
   else
      puts "Invalid input, please try again"
    end
  end

puts play(song)


def exit_jukebox(exit)
  users_response = gets.chomp
    if users_response == exit

      puts "Goodbye"
  end
end

exit_jukebox


def run(songs)
  users_response = " "
    while users_response
      puts "Please enter a command:"
        users_response = gets.strip
          when "list"
          list(songs)
            when  "play"
              list(songs)
                play(songs)
                  when "help"
                    help
                      when "exit"
                      exit_jukebox(exit)
                        break
                      else
                        help
                      end
                    end
                  end
                run(songs)
