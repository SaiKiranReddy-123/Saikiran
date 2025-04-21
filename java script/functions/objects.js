//objects


//object literal :

// var employee = {
//     empid:101,
//     empname:"SAI",
//     contact:9701138513,
//     location:'hyd',
//     mail:'sai@gmail.com'
// }

// console.log(employee.empname)

// console.log(Object['empid'])

// let bike = {
//     company : 'raider',
//     model : 2025,
//     colour : 'grey',
//     price : 98000,

//     bike: {


//     },

//     model : [],
//     stock: true,
//     buy: function () {
//         console.log('you can buy the bike')
//     }
    
   
    
// };

// console.log(bike.stock)

//constructor way :


function personName(name,age){
    console.log(this)

    this.name = name,
    this.age = age

    console.log(name,age)
}

var sai = new personName('kiran',24)

var dileep = new personName('dileep',24)

var dileep = {

    name :'dileep',

    age : 24
}

// console.log(sai)


// factory function :

function data (name , age){
    return{
        name : name,
        age : age
    }
}

var k = data('kk',20)

console.log(k)

//classical way

var person = {
    name :'prakash',
    age :25
}

console.log(person.name)

person.name = 'babji'

person.location = 'hyd'

console.log(name)

delete person.name

console.log(person)


