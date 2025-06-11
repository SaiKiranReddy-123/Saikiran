//hoisting

// console.log(a);

// var a = 1;

// console.log(b);

// let b = 2;

// console.log(c);

// const c = 3;

//closure

function closure(a,b){
    return function(){
        return a+b;
    }
}

console.log(closure(1,2)())

//modules

// import{add, subtract} from './math.js';

// console.log(add(2,3));

// console.log(subtract(10,5))

let mypromise = new Promise((resolve,reject)=>{
    let s = true;
    setTimeout(()=>{
        if(s){
            resolve('operation was successful');
        }
        else{
            reject('operation failed')
        }
    },5000)
})

mypromise
.then((messege)=> console.log(messege))
.catch((error) => console.error(error));

