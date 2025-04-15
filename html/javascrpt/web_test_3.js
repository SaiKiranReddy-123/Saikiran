function Max_num(a, b) {
    if (a > b) {
        return a;
    } else if (b > a) {
        return b;
    } else {
        return a; 
    }
}
console.log(Max_num(10,20));

console.log(Max_num(0,-1));

console.log(Max_num(-95,90));

//-------------------------------------------

function mathematical(a, b, artimatic) {
    switch(artimatic) {
        case '+':
            return a + b;
        case '-':
            return a - b;
        case '*':
            return a * b;
        case '/':
            if (b === 0) {
                return 
            }
            return a / b;
        default:
            return 
    }
}


console.log(mathematical(2,5,'+'));

console.log(mathematical(2,5,'-'));

console.log(mathematical(2,5,'*'));

console.log(mathematical(2,5,'/'));

//---------------------------------------------

num = 1

if(num>0){
    console.log('positive')
}

else if(num<0){
    console.log('negative')
}  

else if(num=0){
    console.log('zero')
}

else  {
    console.log('invalid')
}

//------------------------------------
function array_Sum(arr) {

    if (arr.length===0){

        return 0
    }

    let sum = 0
    for (let num of arr) {
        sum += num;
    
    }
    return sum ;
}

console.log(array_Sum([1,2,3]));

//-------------------------------------------


function arrayavg(arr){
    if (arr.length)
        return 0
}

var sum = 0

for (let num of arr){
    sum += num;
}

return sum

let avarage = sum/arr.length;

console.log(arrayavg([50,60,70,80,90]))