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

# def say_hello(name)
#     "Hi #{name}!"
# end

# puts "Enter your name:"
# user_name = gets.strip

# puts say_hello(user_name)

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs_array)
    puts "Please enter a song name or number:"
    input = gets.strip
    
    
    songs_array.each do |song, index|
        if input.to_i - 1 == index
            puts "Playing #{song[index]}"
            break
        elsif input == song
            puts "Playing #{song}"
        else
            puts "Invalid input, please try again"
            break
        end
    end
end

def exit_jukebox
    puts "Goodbye"
end

def list(array)
    array.each_with_index do |song, index|
        puts "#{index +1}. #{song}"
    end
end

