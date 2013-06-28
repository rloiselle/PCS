// here is bob again, with his usual properties
var bob = new Object();
bob.name = "Bob Smith";
bob.age = 30;
// this time we have added a method, setAge
// This allows the property to be changed.
bob.setAge = function (newAge){
  bob.age = newAge;
};
// here we set bob's age to 40
bob.setAge(40);
// bob's feeling old.  Use our method to set bob's age to 20

// Why Are Methods Important?
// Methods serve several important purposes when it comes to objects.

// They can be used to change object property values. The method setAge on line 4 allows us to update bob.age.
// They can be used to make calculations based on object properties. Functions can only use parameters as an input, but methods can make calculations with object properties. For example, we can calculate the year bob was born based on his age with our getYearOfBirth method (line 8).

var bob = new Object();
bob.age = 30;
// this time we have added a method, setAge
bob.setAge = function (newAge){
  bob.age = newAge;
};

bob.getYearOfBirth = function () {
  return 2013 - bob.age;
};
console.log(bob.getYearOfBirth());

// The keyword this acts as a placeholder, and will refer to whichever object called that method when the method is actually used.

// here we define our method using "this", before we even introduce bob
var setAge = function (newAge) {
  this.age = newAge;
};
// now we make bob
var bob = new Object();
bob.age = 30;
// and down here we just use the method we already made
bob.setAge = setAge;

// change bob's age to 50 here
bob.setAge(50);

// THIS WORKS FOR EVERYONE!
// here we define our method using "this", before we even introduce bob
var setAge = function (newAge) {
  this.age = newAge;
};
// now we make bob
var bob = new Object();
bob.age = 30;
bob.setAge = setAge;

// make susan here, and first give her an age of 25
var susan = new Object();
susan.age =25;
susan.setAge = setAge;

// here, update Susan's age to 35 using the method
susan.setAge(35);

// THIS EXAMPLE DEMONSTRATES HOW TO SCOPE THE METHOD TO THE RECTANGLE OBJECT ONLY
var rectangle = new Object();
rectangle.length = 3;
rectangle.width = 4;
// here is our method to set the length
rectangle.setLength = function (newLength) {
  this.length = newLength;
};
// help by finishing this method
rectangle.setWidth = function (newWidth) {
    this.width = newWidth;
};


// here change the width to 8 and length to 6 using our new methods
  rectangle.setLength(6);
  rectangle.setWidth(8);


// MORE METHOD EXAMPLES
  var square = new Object();
square.sideLength = 6;
square.calcPerimeter = function() {
  return this.sideLength * 4;
};
// help us define an area method here
square.calcArea = function(){
    return this.sideLength * this.sideLength
};

var p = square.calcPerimeter();
var a = square.calcArea();

// CUSTOM CONSTRUCTORS

// create a function with the required parameters for a person object
// use this to refer to each instance.
// NOTE: Person is the Object to be created....
function Person(name,age) {
  this.name = name;
  this.age = age;
}

// Now properties can be set right when they are created!
// Let's make bob and susan again, using our constructor
var bob = new Person("Bob Smith", 30);
var susan = new Person("Susan Jordan", 25);
// help us make george, whose name is "George Washington" and age is 275
var georg = new Person("George Washington", 275);

// CREATING ARRAY OBJECTS AND LOOPING THROUGH

// Our Person constructor
function Person(name, age) {
    this.name = name;
    this.age = age;
};

// Now we can make an array of people
var family = new Array();
family[0] = new Person("alice", 40);
family[1] = new Person("bob", 42);
family[2] = new Person("michelle", 8);
family[3] = new Person("timmy", 6);

// loop through our new array
for(ind = 0; ind <= 3; ind++) {
    console.log(family[ind].name);
}

// Our person constructor
function Person (name, age) {
    this.name = name;
    this.age = age;
}

// PASSING OBJECTS INTO FUNCTIONS
// We can make a function which takes persons as arguments
// This one computes the difference in ages between two people
var ageDifference = function(person1, person2) {
    return person1.age - person2.age;
}

var alice = new Person("Alice", 30);
var billy = new Person("Billy", 25);

// get the difference in age between alice and billy using our function
var diff = ageDifference(alice,billy);


// Looping through person objects
// Our person constructor
function Person (name, age) {
    this.name = name;
    this.age = age;
}

// We can make a function which takes persons as arguments
// This one computes the difference in ages between two people
var ageDifference = function(person1, person2) {
    return person1.age - person2.age;
};

// Make a new function, olderAge, to return the age of
// the older of two people
var olderAge = function(person1, person2) {
    if(person1.age > person2.age) {
        return person1.age;
    } else if(person2.age > person1.age) {
        return person2.age;
    } else if(person1.age == person2.age) {
        return this.age;
    }
};

// Let's bring back alice and billy to test our new function
var alice = new Person("Alice", 30);
var billy = new Person("Billy", 25);

console.log("The older person is "+olderAge(alice, billy));

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// OBJECT REVIEW- OBJECTS2


// Literal vs. bracket notation
var james = {
    // add properties to this object!
   job: "programmer",
   married: false
};

function Person(job, married) {
    this.job = job;
    this.married = married;
}

// create a "gabby" object using the Person constructor!
var gabby = new Person("student", true)


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Set function as property in an object. Call it.
var james = {
    job: "programmer",
    married: false,
    speak: function(condition) {
        console.log("Hello, I am feeling " + condition);
    }
};

james.speak("great");
james.speak("just okay");

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Using dot notation to get and set properties of objects
var james = {
    job: "programmer",
    married: false,
    sayJob: function() {
        // complete this method
        console.log("Hi, I work as a " + this.job);
    }
};

// james' first job
james.sayJob();

// change james' job to "super programmer" here
james.job = "super programmer";

// james' second job
james.sayJob();

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// setting a variable to the a property of the define object
// Pulling out the property using the object in bracket notation
var james = {
    job: "programmer",
    married: false
};

// set to the first property name of "james"
var aProperty = "job";

// print the value of the first property of "james"
// using the variable "aProperty"
console.log(james[aProperty]);