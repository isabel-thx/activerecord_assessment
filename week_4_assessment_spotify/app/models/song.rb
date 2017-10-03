require_relative '../../config/application'

class Song < ActiveRecord::Base

  def self.add_song

    answer = "Y"
    while answer == "Y"
      puts "What is the song title?"
        title = gets.chomp
      puts "Who is the artist?"
        artist = gets.chomp
      puts "What is the song duration?"
        duration = gets.chomp
      song = Song.new(title: title, artist: artist, duration: duration)
      song.save

      Song.list

      puts "Type Y to continue adding songs, Type Q to quit"
      answer = gets.chomp.upcase
      if answer == "Q"
        puts "Enjoy your music!"
        Song.list
      elsif answer != "Y"
        puts "Your input is invalid!"
        break
      end
    end

  end


  def self.list

      puts "=== These are your songs ==="
      puts "No.    Title             Artist        Duration"
      puts "===    =====             =====          ====="

      Song.all.each_with_index do |song, index|
        puts "#{index+1}.".ljust(6) + "#{song.title}".ljust(19) + "#{song.artist}".ljust(15) + "#{song.duration}".ljust(10)
      end

  end


  def self.update_song

    response = "Y"
    while response == "Y"

    Song.list

    puts "Which song number do you want to update?"
      num = gets.chomp.to_i
      if num <= 0
        puts "Song number is not found. Are you sure that this is the right song number?"
      else
        song = Song.all[num - 1]
        if song == nil
          puts "Song number is not found. Are you sure that this is the right song number?"
        else
          puts "The song title is " + "#{song.title}" + " by " + "#{song.artist}" + " and Song Duration is " + "#{song.duration}" + ". " + "What do you want to update? (Type the number)."
          puts <<~STR
            1) Song title
            2) Artist
            3) Song Duration
            STR

        a = gets.chomp
        if a == "1"
          puts "What is the new song title?"
          title = gets.chomp
          song.update(title: title)
        elsif a == "2"
          puts "What is the new song artist?"
          artist = gets.chomp
          song.update(artist: artist)
        elsif a == "3"
          puts "What is the new song duration?"
          duration = gets.chomp
          song.update(duration: duration)
        end
      end

    end

    puts "Do you want to continue updating other songs? (type Y if yes, type Q to quit back to song list)"
      response = gets.chomp.upcase
      if response == "Q"
        Song.list
      elsif response != "Y"
        puts "Your input is invalid!"
      end

    end

  end


  def self.remove_song
    Song.list

    input = "Y"
    while input == "Y"
    puts "Which song number would you like to delete?"
      num = gets.chomp.to_i
      if num <= 0
        puts "Song number is not found. Are you sure that this is the right song number?"
      else
      song = Song.all[num - 1]
        if song == nil
          puts "Song number is not found. Are you sure that this is the right song number?"
        else
          song.delete
          puts "Your song has been deleted."
        end
      end
    puts "Do you want to continue deleting other songs? (type Y if yes, type Q to quit back to song list)"
      input = gets.chomp.upcase
      if input == "Q"
        Song.list
      elsif input != "Y"
        puts "Your input is invalid!"
      end
    end
  end

end
