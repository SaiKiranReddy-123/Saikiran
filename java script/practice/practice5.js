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

// switch case statement

let day =  3

let dayname;

switch(day){
    case 1:
        dayname ="Monday";

        break;
    case 2 :
        dayname = "Tuesday";

        break;

    case 3:
        dayname = "Wednesday";

        break;

    case 4:
        dayname ="Thursay";

        break;
    case 5 :
        dayname = "Friday";

        break;

    case 6:
        dayname = "Saturday";

        break;

    
    case 7:
        dayname = "Sunday";

        break;

    default :

    dayname = "invalid"

}


console.log(dayname)

