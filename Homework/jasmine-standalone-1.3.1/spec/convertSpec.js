// <!-- Tests the Convert library with nested describe calls allows testing of separate functionality with the same code base. -->

  describe("Convert library", function() {

    describe("distance converter", function() {
      it("converts inches to centimeters", function() {
        expect(Convert(12, "inches").to("cm")).toEqual(30.48);
      });

      it("converts centimeters to yards", function() {
        expect(Convert(2000, "cm").to("yards")).toEqual(21.87);
      });
    });

    describe("volume converter", function() {
      it("converts liters to gallons", function() {
        expect(Convert(3,"liters").to("gallons")).toEqual(0.79);
      });

      it("converts gallons to cups", function() {
        expect(Convert(2, "gallons").to("cups")).toEqual(32);
      });
    });

// <!-- Check if unknown units are passed into the convert function or the to method -->

    it("throws an error when passed an unknown from-unit", function() {

 // <!-- The function must be created prior to passing it as a parameter in the expect function  -->
 // <!-- because the expect function can't operate the function. the toThrow handles error objects -->

      var testFn = function() {
        Convert(1, "dollar").to("yens");
      };
      expect(testFn).toThrow(new Error("unrecognized from-unit"));
    });

    it("throws an error when passed an unknown to-unit", function() {
      var testFn = function() {
        Convert(1, "cm").to("furlongs");
      };
      expect(testFn).toThrow(new Error("unrecognized to-unit"));
    });
  });