//functions


//parameters and arguments  
//-----------------------------

// function multiply(x,y){

//     console.log(x*y)

//     console.log(x,y)

// }

// multiply(4,5)

// multiply()

// multiply(20,10)


//default parameter :
//--------------------

// function add(m=10,n=20){

//     console.log(m+n)

// }

// add()

// function add(c=10,d) {

//     console.log(c+d)

// }

// add()


// function add(m=10,n) {

//     console.log(m+n)

// }

// add(undefined,20) 

// function add(m=10,n,o){
//     console.log(m,n,o)
//     console.log(m+n+o)

// }

// add(undefined,10,20)



function add(m=10,n=null,o=20,p=null){

     console.log(m,n,o,p)

 }

 add(undefined,10,null,undefined)