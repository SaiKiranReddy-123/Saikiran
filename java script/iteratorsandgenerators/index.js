var arr = [1,2,3,4,5,6]

var a = arr[Symbol.iterator]()

console.log(a.next())

console.log(a.next())

console.log(a.next())


console.log(a.next())


console.log(a.next())


console.log(a.next())


console.log(a.next())

//generators

// function hello(){
//     return 'hello',
//     //return 'hai'

// }
// console.log(hello())


function* hai(){
    yield "hai"
    yield "hello"
    yield "good"
    yield "morning"
}

var k = hai()


console.log(k.next())
console.log(k.next())
console.log(k.next())
console.log(k.next())
console.log(k.next())


//promises

//timer functions

//synchronous code

console.log("one")

window.setTimeout(()=>{
    console.log("two")
},1000)

window.setTimeout(()=>{
    console.log("three")
},2000)


Promise.resolve().then(()=>{
    console.log("four")
})

console.log("five")

// types of conversion : one data type to another data type

var a = 10

var b = "20"

console.log(a+b)

console.log(a-b)

console.log(typeof(b))

var c = Number(b)

console.log(a+b)



