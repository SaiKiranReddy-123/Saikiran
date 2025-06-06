//types of errors

//syntax error

//refrence error

//runtime error

//logical error

//Nan

//1.syntax error :--if we didnt follow the syntax then we will get the syntax error

//console.log("hello"

//console.log("java script")

//2.refrence error

//console.log(a)//--if variable is not declared in js program then we will refrence error...

//3.type error;---- if we execute different data types then we get type error...

// var A = "hello"

// var m = 2

// var k=m.toUpperCase()

// console.log(k)

// var a = A.toUpperCase()

// console.log(a)


try {

    console.log(a)
}

catch(error){
    console.log(error)
}

finally{
    console.log("this is a finally block")
}




console.log('this is a last line of a js program')

try{
    throw new Error('this error is raised by user');
}

catch(error){
    console.log(error)
}