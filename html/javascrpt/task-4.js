const studentInfo = {
     name: "sai",
     age: 24,
     subjects: ["Math", "Physics", "Computer Science"],
     
     getDetails: function() {
       return `Name: ${this.name}, Age: ${this.age}, Subjects: ${this.subjects.join(", ")}`;
     }
   };
   
   console.log(studentInfo.getDetails());
   


const factorialExpr = function(n) {
     if (n === 0 || n === 1) 
          return 1;
     return n * factorialExpr(n - 1);
   };

console.log(factorialExpr(5));




   const factorialArrow = (n) => {
     if (n === 0 || n === 1)
           return 1;
     return n * factorialArrow(n - 1);
   };
   
console.log(factorialArrow(5))


function factorial(n) {
     if (n === 0 || n === 1)
           return 1;
     return n * factorial(n - 1);
   }
   


   console.log(factorial(5))


   function isprime(num) {
     if (num <= 1) 
          return false; 
     if (num === 2) 
          return true; 
   
     if (num % 2 === 0) 
          return false;
   
     for (let i = 3; i <= Math.sqrt(num); i += 2) {
       if (num % i === 0) 
          return false;
     }
   
     return true;
   }
   

   console.log(isprime(19));

// factorial calculator 

   function factorial(n) {
     if (n < 0) 
          return -1;
   
     if (n === 0) 
          return 1;
   
     let result = 1;
   
     for (let i = 1; i <= n; i++) {
       result *= i;
     }
   
     return result;
   }

   console.log(factorial(0))
   