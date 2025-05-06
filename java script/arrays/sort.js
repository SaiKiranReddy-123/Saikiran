//soting

// converting string to array

var  k = "Good Morning"

var b = Array.from(k)


console.log(b)

//at

var m = [1,2,3,4,5,6,7,8,9]

console.log(m.indexOf(1))

console.log(m.at(1))

// fill

console.log(0,0,1)

m.fill(0,0,m.length)

console.log(m)

//sort

var s = [1,12,4,5,321,14,7,65,34,32]

s.sort ()

console.log(s)

s.sort((a,b)=>a-b)

console.log(s)

s.sort((a,b)=>b-a)

console.log(s)

//------------------------------------
var people = [
    { name: 'sai', age: 24 },
    { name: 'mahi', age: 22 },
    { name: 'liki', age: 21 }
  ]
  
people.sort((a, b) => a.age - b.age)
console.log(people)

//---------------------------------------

var names = ['kiran', 'chitra', 'anu']
names.sort()
console.log(names) 
//------------------------------------------

var n = ['BABJI','sunil','MANU']
var k = n.sort()

console.log(k)

  







