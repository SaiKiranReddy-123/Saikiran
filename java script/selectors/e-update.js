// Display alert after 3 seconds
// setTimeout(() => {
//     alert('Hello after 3 seconds!');
//   }, 3000);
  
//   // With parameters
//   setTimeout((name, age) => {
//     console.log(`Hello ${name}, you are ${age} years old.`);
//   }, 2000, 'Alice', 25);

// Update clock every second


// let counter = 0;
// const intervalId = setInterval(() => {
//   counter++;
//   console.log(`Counter: ${counter}`);
  
//   if (counter >= 5) {
//     clearInterval(intervalId); // Stop after 5 iterations
//   }
// }, 1000);


// setTimeout( () => {

//     alert('this is settimeout')
// },3000)


function delay (a,b){
    console.log(a+b)

    console.log('this is a timezone limit')

}
console.log('this is a sample statement2');
setTimeout(delay,2000,1,2)

console.log('this is a sample statement')

//setInterval(delay,2000)

let interval = setInterval(delay,3000)

setTimeout(() => {
    clearInterval(interval);
},6000)