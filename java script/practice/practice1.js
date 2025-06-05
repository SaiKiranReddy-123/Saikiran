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

  function isPalindrome(str) {
  let reversed = str.split('').reverse().join('');
  return str === reversed;
}

console.log(isPalindrome("madam")); // true
console.log(isPalindrome("hello")); // false
//-----------------------------------------------

let person1 = {
  name :"kiran",
  age:24,
  location:"atp",
  greet: function(){
        console.log('hello',this.name)
  }

}


person1.greet()

console.log(person1.name)

//remove duplicates from an array

function removeduphlicates(arr){
  return[...new Set(arr)]
}

console.log(removeduphlicates([1,1,2,3,4,3,2,1]))

//remove duplicates from a string

function removeduphlicates(str){
  return[... new Set(str)].join('');
}

console.log(removeduphlicates('programming'))

// price of the volume box using three arguments by using curried function

function volumebox(l){
  return function(w){
    return function(h){
      return l*w*h;
    }
  }
}

let v = volumebox(20)(2)(20);
console.log(v)

//create a object with properties and to change some modifications

let obj = {
  id :101,
  type:'savings',
  balance:10000
}

obj.currency = 'USD';

delete obj.currency;
obj.balance = 15000

for (let key in obj) {
  console.log(`${key}:${obj[key]}`)
}

//using recursive function to add first five numbers

function sumnum(n){
  if (n<=1) return n;
  return n + sumnum(n-1);
}

console.log(sumnum(5))
//----------------------------------------
var details = {

  name : 'sai',

  age :24,

  contact : 9701138513
}

var copy = {...details}

copy.name = 'kiran'

console.log("details:",details)

console.log("copy:",copy)


// create one function and follow the some conditions

function formatMassege(msg){
  msg = msg.trim();

  msg = msg.toLowerCase()


  if(msg.startsWith("hello")){
    console.log("greeting detecetd")
  }

  msg = msg.replace(/js/,"java script")

  return msg.split(' ')
}


var result = formatMassege("this is a js")

console.log(result)







