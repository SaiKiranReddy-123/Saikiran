//closure function

// function hai(){
//     return function hello(){
//         return "This is a closure"

//     }
// }
// var a = hai ()

// console.log(a())

// console.log(hai())



// function A(a,b){
//     return function B(){
//         return a+b
//     }
// }

// console.log(A(1,2))


// function A(a,b,c,d,e){
//     return function B(){
//         return a+b+c+d+e
//     }
// }

// console.log(A(1,2,3,4,5)())

// //function currying



// function A(a){
//     return function B(b){
//         return function C(c){
//             return function D(d){
//                 return a+b+c+d
//             }
    
//         }
 
//     }
// }

// console.log(A(1)(2)(3)(4))



// function hello(a,b,c){
//     return function hai(){
//         return function bye(){
//             return a+b+c
//         }
//     }
// }

// console.log(hello(1,2,3)()())


// function hello(a,b,c){
//     return function hai(b){
//         return function bye(c){
//             return a+b+c
//         }
//     }
// }

// console.log(hello(1)(2)(3))

//recursive function 

// function hello (a){
//     let sum =0

//     for(i=1;i<=a;i++){
//         sum+=i
// }
// return sum
// }

// console.log(hello(5))


// function hey(a){
//     if (a===0){
//         return 0
    
// }   
// return a+hey(a-1)
// }
// console.log(hey(5))


// wap product of first 5 numbers

// function hey(a){
//     if(a===0){
//         return 1
//     }
//     return a*hey(a-1)
// }

// console.log(hey(3));

//higher order function

// var a = function hello(){

// }

// function hai (M){

// console.log(M)

// }
// hai(a)