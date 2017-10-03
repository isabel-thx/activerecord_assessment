# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
  def menu
    puts <<~STR
    What would you like to do? (Type the number)
      1) List
      2) Add A Song
      3) Update A Song
      4) Remove A Song
      5) Quit
    STR
  end

  loop do
  menu
   print ">>"
   input = gets.chomp
   case input
   when "1"
     Song.list
   when "2"
     Song.add_song
   when "3"
     Song.update_song
   when "4"
     Song.remove_song
   when "5"
     puts "Have a nice day!"
     break
   else
     puts "Sorry, your input is invalid!"
   end
  end
