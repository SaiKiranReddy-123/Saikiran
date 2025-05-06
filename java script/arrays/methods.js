

// array methods

//map

var a = [1,2,3,4,5,6]

// var a1 = []

// for (i of a){
//     a1.push(i*i)
// }

// console.log(a1)

 var k = a.map((i)=> i*i)
    



console.log(k)



//filter

var a1 = [10,12,13,14,15,20,23,25,35,40]

var k = a1.filter(function (v){

    return v%5==0

})

console.log(k)

//--------------

var k = a1.filter(v=> v%5==0)

console.log(k)


//reduce 

var m = [1,2,3,4,5,6]

var sum = 0

for (i of m){
    sum+=i

}

var k = m.reduce((a,b)=> a+b,0)

console.log(k)


// every


var v = [1,2,3,4,5,6]

console.log(v.every(i=> i%2==0))

//some


var v = [1,2,3,4,5,6]

console.log(v.some(i=> i%2==0))


// set

var k = new Set()

k.add(1)

k.add(2)

k.add(1)

k.add(3)

k.add(1)


console.log(k)

k.delete(3)

console.log(k)

console.log(k.has(5))  // has method

k.clear()

console.log(k)

// removing duphlicates from an array

var s = [11,12,12,11,13,14,15]

var as  = [new Set(s)]

console.log(as)

var as  = [... new Set(s)] // by using spread operator

console.log(as)

//includes

// var newarr = []

// for (i of s){

//     if(newarr.includes(i)){
//         continue
//     }
//     else{
//         newarr.push(i)
//     }
// }


// using function 

function hello(s){
    var newarr = []

    for (i of s){
        if(  newarr.includes(i)){
            newarr.push(s)
        }

    } 
    return newarr     
}

console.log(hello(s))


//faltning of array

var b = [1,2,3,'sai','hi',[10,20,30,[11,12,[90,32]],[50],[30,80,[40,34],[56,67,78]]]]  //--> this is to finding deapth

console.log(b.flat(Infinity))

console.log(b.flat(3))


