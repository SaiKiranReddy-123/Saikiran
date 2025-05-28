//call back

//promises

//Async and await

// console.log("one")

// window.setTimeout(() =>    {
//     console.log("two")
// },1000)

// console.log("three")

// function fetchData(hello){
//     var data = 'sk reddy'
//     window.setTimeout(() =>{
//         hello(data)
//     },2000)
// }

// function displayData (name){
//     console.log("data from the API call", name)
// }

// fetchData(displayData)


// function one(nextfunction){
//     var a = 10

//     console.log("one function")

//     //console.log(nextfunction)

//     window.setTimeout(() => {

//     nextfunction()
//       },2000)
// }



// function two (){
//     console.log("second function")
//     window.setTimeout(() =>{
//     nextfunction()
//     },2000)

    
//}

// function three(hai){
//     console.log('third function')
//     window.setTimeout(()=> {
//         hai()
//     },2000)
// }

var pro = new Promise((resolve , reject) => {
  
    var a = true
  
    if (a)  {
    resolve()
   }
   else{
    reject()
   }
})

pro.then(function ()  {

    console.log("promise resolved")
})

.then(function (error){
    console.log("second promise ")
})

.catch(function(error){
    console.log('promise rejected')
})

function First () {
    return new Promise((resolve,reject) => {
        console.log("First function")
        resolve()
    })
}

function Two() {
    new Promise((resolve,reject) => {
        console.log("Two")
        resolve()
    })
}

First()

//fetch

// var Apidata

// fetch('https://jsonplaceholder.typicode.com/posts/')

// //.then(data => data.json())
// .then(data => console.log(data))

// .catch((eror) => {
//     console.log(error)
// })


// fetch('https://jsonplaceholder.typicode.com/')

// .then(data => console.log(data))

//post

var user = {
    name : 'sai',
    location: 'atp',
    job :'it'
}
  
fetch('https://jsonplaceholder.typicode.com/posts',{

    method : 'post',
    body : JSON.stringify(user),
    headers: {
        'Content-type': 'application/json'
    }

 })
 .then(data => data.json())

 .then(data=>console.log(data))

//put

var data = {
    user_id :1,
    id:1,
    body : 'this is a body content',
    title : 'this is a updated title'
}

fetch('https://jsonplaceholder.typicode.com/posts/2',{
    method : 'put',
    body :JSON.stringify(data),
    headers:{ 
        'Contenttype':'application/json'
        
    }
})

.then(res=>console.log(res))

.then(data => console.log(data))






