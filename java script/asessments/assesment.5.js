function logUserDetails(...users) {
  for (let user of users) {
    console.log(`User: ${user.name}, Age: ${user.age}`)
  }
}


logUserDetails(
  { name: "John Doe", age: 25 }
)



let obj = {
  name : 'kiran',
  age : 24,
  adress : 'hyd'
}

console.log(obj)

obj.email = 'kiran@gmail.com'

console.log(obj)

delete obj.adress

console.log(obj)

obj.age = 25

console.log(obj)

for (let k in obj){

  console.log(obj(k))
}




function multiply(a,b,c) {

      return a * b * c{
      
  }
}


console.log(multiply(1)(2)(3))


// function factorial(n) {
//   if (n === 0 || n === 1) {
//     return 1
//   } else {
//     return n * factorial(n - 1)
//   }
// }


// console.log(factorial(7))


// function formatString(str) {

//   let s = "    hello world   "
//   s = str.trim()
//   console.log(s)

// //   let str  = "SAI KIRAN"
// //   str = str.toLowerCase()
// //   console.log(str)


  
// //  let  startsWithHello = str.startsWith("hello");
// // console.log(startsWithHello)

// //    let str = 'world'
// //   str = str.replaceAll("world", "everyone");
// //   console.log(str)
  


// //   let words = str.split("java script ");
// //   console.log(words)
// }
// //3rd answer
// let a = new Set()

// a.add(11)

// a.add(12)

// a.add(11)

// a.add(12)

// a.add(13)

// console.log(a)
 const numbers = [10, 20, 30, 40];

 const sum = numbers.reduce((a,b) => {
   return a + b
 }, 0)

 console.log(sum)