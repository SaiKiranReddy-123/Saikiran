function add(a, b) {
    return a + b
  }
  
  let k = add(5, 3)
  console.log(k) 
//-------------------------------

let num = 5
factorial = 1

for (let i = 1; i <= 5; i++) {
  factorial *= i
}

console.log( factorial)
//----------------------------------------
let student = {
    name: "Anu",
    scores: {
      math: 90,
      english: 85,
      science: 95
    }
  };
  
  for (let subject in student.scores) {
    console.log(student.scores[subject])
  }
  