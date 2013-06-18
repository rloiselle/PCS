bottles = 99
rmbot = 1
lyric1 = bottles.to_s + " bottles of beer on the wall"
lyric2 = "take " + rmbot.to_s + " down, pass it around"
lyric3 = (bottles - rmbot).to_s + " of beers on the wall"

puts lyric1
puts lyric1
puts lyric2
puts lyric3


class Beer
  def self.song
    (1..99).to_a.reverse.each do | bottles |
    puts bottles.to_s + " bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles-1} bottles of beer on the wall.
"
    end
  end
end

Beer.song

