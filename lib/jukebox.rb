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

def list (array)
  array.each_with_index do |tune, index|
    puts "#{index + 1}. #{tune}"
end
end

def play (songs)
  puts "Please enter a song name or number:"
  song_selection = gets.chomp

   songs.find do | song |
   if song_selection == song 
     puts "Playing #{song}"
   elsif song_selection.to_i <= songs.length && song_selection.to_i != 0
     puts "Playing #{songs[song_selection.to_i - 1]}"
   else 
     puts "Invalid input, please try again"
   end
 end
 end

def exit_jukebox 
  puts "Goodbye"
end

def run (songs)
  help
  user_input = nil
  while user_input != "exit"
  puts "Please enter a command:"
  user_input = gets.downcase.chomp
  case user_input 
  when "list"
    list(songs)
  when "play"
    list(songs)
    play(songs)
  when "help"
    help
  when "exit"
    exit_jukebox 
  else 
    help 
  end  
  end
end 
