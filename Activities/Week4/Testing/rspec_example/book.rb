class Book
  attr_accessor :title, :author, :category #allow reading and writing access
    def initialize(title, author, category) #requires the variables when object instance is created
      @title = title
      @author = author
      @category = category
    end

end