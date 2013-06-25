describe("Hello world", function() {

  beforeEach(function() {
    this.addMatchers({
      toBeDivisibleByTwo: function() {
        return (this.actual % 2) === 0;
      }
    });
  });

  it('is divisible by 2', function() {
    expect(gimmeANumber()).toBeDivisibleByTwo();
  });

  it("says hello", function() {
    expect(helloWorld()).toEqual("Hello world!");
  });

  it("says hello", function() {
    expect(helloWorld()).toContain("world");
  });

});

// spyOn fakes the sayHello method which triggers the method we are actually interested in testing
describe("Person", function() {
    it("calls the sayHello() function", function() {
        var fakePerson = new Person();
        spyOn(fakePerson, "sayHello");
        fakePerson.helloSomeone("world");
        expect(fakePerson.sayHello).toHaveBeenCalled();
    });
});

// checking that helloSomeone's arguement is "world"
describe("Person", function() {
    it("greets the world", function() {
        var fakePerson = new Person();
        spyOn(fakePerson, "helloSomeone");
        fakePerson.helloSomeone("world");
        expect(fakePerson.helloSomeone).toHaveBeenCalledWith("world");
    });
});

// Use this to make sure something isn't called
// expect(fakePerson.helloSomeone).not.toHaveBeenCalledWith("foo");

// Testing to see that a function is called rather than testing if it functioned the way it should.
// This is done by emptying the contents of the function while testing
// sayHello is turned into a dummy function, spy created,  test with helloSomeone(), then make sure dummy has been called.

describe("Person", function() {
    it("says hello", function() {
        var fakePerson = new Person();
        fakePerson.sayHello = jasmine.createSpy("Say-hello spy");
        fakePerson.helloSomeone("world");
        expect(fakePerson.sayHello).toHaveBeenCalled();
    });
});

// same as above except that the spy will return something
describe("Person", function() {
    it("says hello", function() {
        var fakePerson = new Person();
        fakePerson.sayHello = jasmine.createSpy("Say-hello spy").andReturn("ello ello");
        fakePerson.helloSomeone("world");
        expect(fakePerson.sayHello).toHaveBeenCalled();
    });
});


// asynchronous tests use run()-executes procedurally and waitsFor() waits for some condition to be true and then continues on (option 'timeout' available)
// below waits for calculator to return true on calc.answerHasBeen Calcuated
describe("Calculator", function() {

    it("should factor two huge numbers asynchronously", function() {

        var calc = new Calculator();
        var answer = calc.factor(18973547201226, 28460320801839);

        waitsFor(function() {
            return calc.answerHasBeenCalculated();
        }, "It took too long to find those factors.", 10000);

        runs(function() {
            expect(answer).toEqual(9486773600613);
        });

    });

});