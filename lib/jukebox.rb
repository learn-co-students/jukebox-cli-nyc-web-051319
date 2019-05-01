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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |name, index|
    puts "#{index + 1}. #{name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  songs.each_with_index do |name, index|
    if response.to_i == (index + 1) || response == name
      puts "Playing #{name}"
      break
    else
      puts "Invalid input, please try again"
      break
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = ""

  while response != "exit"
    puts "Please enter a command:"
    response = gets.chomp

  case response
  when "list"
    list(songs)
  when "help"
    help
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
  end

end


end
