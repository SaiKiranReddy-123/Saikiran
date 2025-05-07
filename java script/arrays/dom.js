//dom

var people = [
    { name: 'sai', age: 24 },
    { name: 'mahi', age: 22 },
    { name: 'liki', age: 21 }
  ]
  
people.sort((a, b) => a.age - b.age)
console.log(people)


var M = new Map()
M.set("name", "sai")

M.set("age",24)

console.log(M)

console.log(M.size)

var arr = [1,2,3,4,5]

for (i in arr){

    M.set(i,arr[i])
}

console.log(M)

//weakmap

let obj = { name: "kavya" }

let wm = new WeakMap()

wm.set(obj, "this is weakmap")

console.log(wm.get(obj))





