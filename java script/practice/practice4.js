//iterate the object

let s = {
    name : 'kiran',

    role : 'IT',

    location : 'ATP'
};

for (let k in s) {
    console.log(`${k}:${s[k]}`);
    
    
}

//curried  function
function one (a){
    return function(b){
        return function(c){
            return(a+b*c)

        }
    }
}
console.log(one(10)(2)(2))


//recursive function

function factorial(n){
    if (n===1) return 1;
    return n * factorial(n-1)
}

console.log(factorial(5))

