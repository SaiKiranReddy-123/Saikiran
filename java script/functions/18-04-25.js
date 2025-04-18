//call back function

function one(){
    console.log("this is first function")


}

function two(a){

    console.log("this is second function")

    console.log(a)

    a()
}

two(one)

//-----------------------------

function m(){


}

function n(o){

    console.log(o)

    console.log('hello nyb')
}

n(m)


function hello(c){

    console.log("this is hello function")
    
    console.log("this is sum:",c)
}

function hai(a,b,B){
    console.log("how are you")

    B(a+b)

}

hai(1,2,hello)



//recursion function

function hello(b){
    if (b===0){

        return 0

    }

    return b+hello(b-1)
       
}

console.log(hello(5))




 function hello (a){

    if (a===0){
        return 1
    }
    return a*hello(a-1)
 }

console.log(hello(5))