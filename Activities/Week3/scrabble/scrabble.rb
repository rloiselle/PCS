
board = [[],[],[],[],[],[],[]]
# can fill inner array while array.length <= 5
letter_2x_3x = [[3,0,0,0,3],[0,2,0,2,0],[0,0,0,0,0],[0,2,0,2,0],[3,0,0,0,3]]
  # word_2x_3x
  #position letter_2x_3x[2][2] is double word score

# RULES FOR FILLING THE board
 #1.) Direction of laying tiles: left to right, up to down, no diagonals, no reverse words
 #2.) Single use only on extra point squares (2x,3x letter; 2x, 3x word, star)
 #3.) When inner board.empty? (== T), the only play allowed is on/through star.
 #4.) 7 random letters drawn per player  (need to know full count of available letters?)
 #5.) There's more but this is good 'nuff

tileBag = [["A",9],["B",2],["C",2],["D",4],["E",12],["F",2],["G",3],["H",2], ["I",9], ["J",1], ["K",1], ["L",4], ["M",2], ["N",6], ["O",8], ["P",2]]
# ["Q,1"], ["R",6],["S",4],["T",6], ["U",4],["V",2],["W",2],["Y",2],["Z",1]



#Trying to grab 5 rand numbers from letters
  # tileBag[1..15][0].sample 5
  # tileBag[rand(tileBag.length)][0].sample 5
  # tileBag[tileBag.length.sample(5)][0]

  # for(i in 0..15){
  #   tileBag
  # }


#Iterates through the outer array, pulling index 0 only from inner array
# tileBag.each do |letter|
#   puts letter[0]
# end

# test = tileBag.map { |outAry| outAry.map(&:next) }
# print(test)
trans_tileBag = tileBag.transpose
print (trans_tileBag[0][0..15].sample 5).each_index{|item| print item}

print letters

 # print letters.take(2)
 #print trans_tileBag[1].slice("B")


.each_index { |item|
   print item #tileBag[0..15][0].index(item)
}

# letters.each do |item|
#   puts "#{item}"
# end

  #tileBag will need letters repeating, so
  #do each get letter from tileBag[i][0]
  #repeat the number of times in tileBag[i][1]
  #Put in new array