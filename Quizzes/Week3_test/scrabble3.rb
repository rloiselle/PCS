  # values =
    # {
    #   1 => %w(a e i o u l n r s t),
    #   2 => %w(d g),
    #   3 => %w(b c m p),
    #   4 => %w(f h v w y),
    #   5 => %w(k),
    #   8 => %w(j x),
    #   10 => %w(q z),
    # }

  values = {
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }


class Scrabble
   def initialize(word)
     @word = word
   end

#   def self.score(word)
#     word.downcase.chars.inject(0) do |sum, letter|
#       sum + value(letter)
#     end
#   end

  def splitString
    letters = @word.split(//)
  end

  # def returnValue
  #   letters.each do |item|

  #    values.each do |key, points|
  #   #   return key if points.include?(letter)
  #   end
  # end

end

scrab =  Scrabble.new("cabbage")
# print(scrab.splitString.returnValue)
values["A"]

# scrab.each do| item|
#   print(values[item])
# end

# # values.each do|letter,value|
# #   puts "#{letter}: #{value}"
#   end