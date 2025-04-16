//scope

//functional scope

//block scope

// function sum(){

// {
//     let A = 1

//     const B = 2

//     var k = 20

//     console.log(k)
// }
// console.log(A,B)

// console.log(k);

// }

// sum()

//redeclaration

// var M = "hello"

// console.log(M)
// //re intialize
// M = "HI"

// console.log(M)

// let J = "HAI"

// console.log(J)

// //redeclaration

// var J = "bad"
// //re intialize

// J = "good morning"

// console.log(J)



// const O = 'good'

// //redeclaration

 //const O = 'java script'

 //console.log(O)

//reintialize

// O = 'web development'

// console.log(O)

//closure
//--------------
// function hello(a,b){
//     return function bye(){
//         return a+b
//     }
// }

// let k = hello(1,2)

// console.log(k)

function A(a,b){
    console.log(a+b)
    return a+b
}

var k = A(1,2)
console.log(k)

console.log(A())