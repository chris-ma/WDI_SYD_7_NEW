describe("calculator",function(){

    describe(".performOperation", function(){
        var calc;

        beforeEach(function(){
          calc = new Calculator();

        });

          it("performs addition of two numbers", function(){
            // var calc = new Calculator(); //refactoring
            var result = calc.performOperation("add",2,3);
            expect(result).toBe(5);
          });

          it("performs subtraction of two numbers", function(){
            // var calc = new Calculator();
            var result = calc.performOperation("subtract",5,2);
            expect(result).toBe(3);
          });

          it("performs multiply of two numbers", function(){
            // var calc = new Calculator();
            var result = calc.performOperation("multiply",5,2);
            expect(result).toBe(10);
          });

          it("performs division of two numbers", function(){
            // var calc = new Calculator();
            var result = calc.performOperation("division",10,5);
            expect(result).toBe(2);
          });


    });
});

