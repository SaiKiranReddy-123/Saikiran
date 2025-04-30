// array

var $arr = [1,2,3,4,5,'sai',true,null,undefined,{},[[],[]],'hello' ]

console.log($arr)

console.log($arr[5])

console.log($arr[$arr.length-1])

//push method : adding new new array 

$arr.push('bye')


console.log($arr)

console.log($arr[0])

console.log($arr[$arr.length-1])


//add new item at starting of array

//unshift

$arr.unshift('hai')

console.log($arr)

console.log($arr[0])


//adding array anywhere in array

$arr.splice(3,0,'how are you ...?')

console.log($arr)

$arr.splice(3,1,'how are you ...?')

console.log($arr)

//removing one item from array

//pop is used to remove the last item of array

$arr.pop()

console.log($arr)

$arr.pop()

console.log($arr)

//shift : is used to remove first item of array.

$arr.shift()

console.log($arr)

