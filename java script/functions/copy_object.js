
//primitive

var m = 10

var n = m

console.log(m,n)

var m =50

console.log(m,n)

// refrence data types

//normal copy

var orginal = {             // here orginal is object 

    name:"sai",
    age:24,
    cit:"ptp",
    
    job : {
        role : 'tester',
        desgn : 'IT',
        salary : '30000'
    }
}

var copy = orginal

console.log(orginal)

orginal.job.salary = 45000

orginal.age=31,  

console.log(copy)

console.log(orginal)

