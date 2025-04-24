

//template

var a = 10

var b = 20

console.log("sum of a and b is :",a+b)

console.log('sum of a' +a+ 'and b '+b+ 'is :', a+b)

console.log(`sum of ${a} and ${b} is : ${a+b}`)

// string methods

//length of string

var a = 'java scrpit'

console.log(a.length)

//rempving white spaces

var a = '     Sai               '

console.log(a)

console.log(a.trimStart())

console.log(a.trimEnd())

console.log(a.trim())

// extracting specific part of string 

var a = 'Wish You Happy Birthday...!!'

console.log(a.length)

console.log(a.slice(0,9))

console.log(a.slice(9,a.length))

console.log(a.substring(0,a.length))   //if i give negative then i will throw the error
//  beacuse substring won't except the negative values


//substr (starting , length)

console.log(a.substr(9,5))

var a = 'Good morning'

console.log(a.substr(1,1))

console.log(a.indexOf('g'))

console.log(a.lastIndexOf('o'))