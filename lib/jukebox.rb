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
  songs.each_with_index do |song, num|
    puts "#{num + 1}. #{song}"

  end
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  songs.each_with_index do |song, num|
    if selection == (num + 1).to_s || selection == song
      puts "playing #{song}"
    end 
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  loop do
    entry = gets.downcase.chomp
    case entry 
    when "list"
      list(songs)
      puts "Please enter a command:"
    when "help"
      help
      puts "Please enter a command:"
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    else 
      puts "Not valid command. Type 'help' for available commands."
    end
  end
end

