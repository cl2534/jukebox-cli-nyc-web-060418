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
  context = "I accept the following commands:
            - help : displays this help message
            - list : displays a list of songs you can play
            - play : lets you choose a song to play
            - exit : exits this program"
  puts context
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each do |song|
    if song == input
      puts "Playing #{song}"
      return nil
    end
  end
  if input.to_i < songs.length + 1 && input.to_i != 0
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
 puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp 
  while input = gets.chomp do 
    case input
    when "help"
      help 
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit
      break 
    end 
  end 
end 
  
