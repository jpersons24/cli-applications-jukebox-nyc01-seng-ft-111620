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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  number = user_input.to_i - 1

  if input == "exit"
    exit_jukebox
  elsif number < 0 && array.include?(user_input)
    index = array.index(input)
    puts "Playing #{array[index]}"
  elsif number >= 0 && array[number] != nil
    puts "Playing #{array[number]}"
  else
    puts "Invalid input, please try again"
  end

end

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.strip
#
# puts say_hello(users_name)
