require 'spec_helper'

#describe explains what we're testing
describe Book do

  before :each do  #requires the following code before each test is run. Alternatively use :all to run the code once before all tests.
    @book = Book.new "Title", "Author", :category
  end

#nested describe block describes the actions of a specific method
  describe "#new" do  # "#new" refers to an instance method. Class name is already defined above, otherwise might the syntax is "ClassName#methodName"
#above will not do anything unless initialize method exists in book.rb class Object
    it "takes three parameters and returns a Book object" do
      @book.should be_an_instance_of Book  # confirm that we made a Book object
#above: object.should function or object.should_not function
    end
  end

  describe "#title" do
    it "returns the correct title" do
      @book.title.should eql "Title"  #can use eql == equal (in equal, the two objects being compared must truly be equal ,ie same object in memory)
    end
  end

  describe "#author" do
    it "returns the correct author" do
      @book.author.should eql "Author"
    end
  end

  describe "#category" do
    it "returns the correct category" do
      @book.category.should eql :category
    end
  end

end