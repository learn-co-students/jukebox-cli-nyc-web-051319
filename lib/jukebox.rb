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
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end

def list(songs)
   songs.each_with_index do  |song, index|
    puts "#{index+1} #{song}"
  end
 end


def play(songs)
  puts "Please enter a song name or number:"
    users_response = gets.chomp
 if  users_response.to_i.between?(1,9)
   #[1..9].to_a.include? (users_response.to_i) --  a range.to_a doesnt turn range into an array --  that's why  it was giving an  error
        puts "Playing (#{songs}(users_response.to_i)"
      elsif songs.include? (users_response)
        puts "Playing #{songs}"
      else
      puts "Invalid input, please try again"
    end
  end



def exit_jukebox
    puts "Goodbye"
end


def run(songs)
  users_response = " "
    while users_response
      puts "Please enter a command:"
      users_response = gets.strip
    case users_response
          #   list(songs)   #case is like if else, list(songs) doesnt have function -- so when follows immideately
     when "play"
              list(songs)
          play(songs)
     when "help"
            help
      when "exit"
              exit_jukebox
          break
      else
        help
    end
  end
end
