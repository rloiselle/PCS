// "Write a program that prints the numbers from 1 to 100.
// But for multiples of three print “Fizz” instead of the number
// and for the multiples of five print “Buzz”.
// For numbers which are multiples of both three and
// five print “FizzBuzz”."



// This example allows the user to get the values from the function.
var number;

//  global variable above
var fizzBuzz = function(number){
  if(number % 3 === 0 && number % 5 === 0) {
    return("FizzBuzz");
  } else if (number % 3 === 0) {
    return("Fizz");
  } else if(number % 5 === 0){
    return("Buzz");
  } else {
    return(number);
  }

};

var nam = function(){

for(number =1; number<=100; number++){
    console.log(fizzBuzz(number));
  }
};


// This example is less flexible in that if you want to do
// something with the return value, you can't when using
// console.log in the function

      // var fizzBuzz= function(){
      //   // variable number given in the for loop
      //   for(var number = 1; number <= 100; number++) {
      //     if(number % 3 === 0 && number % 5 === 0) {
      //       console.log("FizzBuzz");
      //     } else if (number % 3 === 0) {
      //         console.log("Fizz");
      //     } else if(number % 5 === 0){
      //         console.log("Buzz");
      //     } else {
      //         console.log(number);
      //     }
      //   }
      //  };

      //  fizzBuzz();