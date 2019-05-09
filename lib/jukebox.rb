require 'pry'
# binding.pry
# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)




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
- exit : exits this program "
end

def list (songs)
  new_index = 0
  songs.each_with_index do |val,index|
new_index = index +=1
    puts "#{index}" + ". " + "#{val}"
  end
end

def play (songs)

puts "Please enter a song name or number:"
result = gets.chomp
songs.each_with_index do |val,index|
new_index = index + 1
if result.to_i == new_index
  puts "Playing #{val}"
elsif result == val
  puts "Playing #{val}"
else
  puts "Invalid input, please try again"

end
end
end

def exit_jukebox
  puts "Goodbye"
end

def run (arg)
  help
  puts "Please enter a command:"
  result = gets.chomp
  if result  == "list"
  list()
  elsif result == "play"
  play()
elsif result == "help"
  help
elsif result == "exit"
  exit_jukebox
end
end
