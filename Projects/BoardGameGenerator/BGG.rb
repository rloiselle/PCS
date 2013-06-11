require 'pp'

#array of board games
#rand generator

    file_board_games = File.read('GameList.txt').split(',')# { |word| word.split(',')}

    array_of_games = file_board_games.map do |word|
      word.gsub(/^'|'$/, '')
    end

    # puts "Do you have a new game to put in?"
    # puts "Type 'yes' or 'no'"
    # response = gets.chomp.downcase
    #   if response == 'yes'
    #     puts "Enter new board game: "
    #     new_game = gets.chomp
    #     list << new_game
    #   elsif response == 'no'
    #       add_game
    #   else
    #     puts "Type 'yes' or 'no'"
    #     return true
    #   end

#Turns out you can just do this on the array....
#.uniq gets rid of duplicate values
#.sample pulls out however many random values (user input) from the array without replacement
    print array_of_games.uniq.sample(2)

#------------------------------------------------------------------------------------
#THIS WORKS, BUT NOT NECESARY
#gameLength = array_of_games.size.to_i
#number_in_list = (0..gameLength).to_a

#requests a numeric input which is used as input to the .pick method
 # puts "enter number of games desired"
 # usernum = gets.chomp
 # randInd = number_in_list.sample(usernum.to_i)
 # puts randInd

 # randInd.each do |item|
 #     print array_of_games[item.to_i] + "\n"
 # end

