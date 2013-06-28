
xdescribe("Fizz Buzz",function() {
  it("should contain a number", function() {
    expect(fizzBuzz(99)).toBe("Fizz");
  });
});

describe("A spy", function() {

  it("tracks the number of calls", function() {
    spyOn(console, 'log');
    nam();
    expect(console.log.calls.length).toEqual(100);
  });
});