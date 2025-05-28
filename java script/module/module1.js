import {  add } from './module1.js';
import { singup as sin,a } from "./module2.js";
// console.log(singup,a)
console.log(add)
console.log(sin )
console.log(a)
// console.log(a)
 
// function singup(){
//     console.log("sinup")
// }
 
// function login(){
//     console.log("logged into your account")
// }
 
// Destructuring
// packed and inpacked
 
var arr=[10,20,30]
 
var [d,b,c]=arr
console.log(d,b,c)
 
// function adding(a,b){
//     return a+b
// }
// console.log(adding(1,2))
 
function adding([a,b]){
    return a+b
}
var array=[1,2];
console.log(adding(array))