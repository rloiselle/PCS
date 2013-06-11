
class Rebecca
  def self.fav_color  #class method
    @@col = "green"     #All Class Rebecca will have favorite color green

  end
  def initialize(skills)  #To initialize an instance class with variable skills
    @skills = skills
  end
  def learnt(skill)   #to create an instance method which pushes a new skill into an array of skills
    @skills << skill
  end
  def skills          #to test how returns vs puts works within the method
#    puts @skills     #This will list skills new line
#    return @skills   # This will return as array
    puts "I am not"   #puts will print string and then nil- DANGER
    #vs return will return the string twice.  Important when extracting variables
  end
  def fancymyskills     #
    return "You are not fancified" if @skills.empty?
    #post conditional- if skills are empty return the statement
    @skills.collect! {|element| "You have #{element}"}
    #Collect is like each except it moves elements into array
  end

end

person = Rebecca.new(["bweaving", "cooking", "derby"])

 #p person.fancymyskills

 p person.skills

 person.learnt("ruby")


 #puts person.skills

 #puts Rebecca.fav_color
 #puts person.fav_color

