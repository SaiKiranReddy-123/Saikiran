
// function calculateGrade(marks) {
//     return (marks >= 90) ? "A" :
//            (marks >= 70) ? "B" :
//            (marks >= 50) ? "C" :
//            "Fail";
// }

// console.log(calculateGrade(90));




// function factorial(n) {
//     if (n === 0 || n === 1) {
//         return 1;
//     } else {
//         return n * factorial(n - 1);
//     }
// }
//  console.log(factorial(5));


 const sumEven = (arr) => 
     arr.filter(num => num % 2 === 0)
        .reduce((sum, num) => sum + num, 0);

 console.log(sumEven[1,2,3,4,5,6]);




// function countProperties(obj) {
//     let a = 0;
//     for (let key in obj) {
//         if (obj.property(key)) {
//             a++;
//         }
//     }
//     return a;
// }

// const person = {
//     name: "kiran",
//     age: 30,
//     job: "IT"
// };

// console.log(countProperties(person));


// var employee (name,id,skills)={ 
//     name : [sai],
//     id: [101],
//     skills:[sql],
// }

// console.log(employee)

// employee.designation=IT;

// employee.name=kiran;

// console.log(employee)



// function findMax(arr) {
//     if (arr.length === 0) 
//         return 0
//     let max =arr[0];

//     for (let i = 1; i < arr.length; i++) {
//         if (arr[i] > max) {
//             max = arr[i]; 
//         }
//     }

//     return max;
// }


// console.log(findMax([11,12,23,34,45,56]));


function sumObjectValues(obj) {
    let total = 0;

    for (let total in obj) {
            total += obj; 

    }

    return total;
}

const marks = {
    computer : 90,
    physics:45,
    maths:40

}

console.log(sumObjectValues(marks));
