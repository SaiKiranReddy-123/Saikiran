function analyzeCommand (cmd){
    cmd = cmd.trim('sai......');
    cmd = cmd.toUpperCase('');
      cmd = cmd.replace(/EXECUTE/g, "RUN");
     // let words = cmd.split(/\s+/);
}

let a = analyzeCommand("java script")
console.log(a)

function curryFun(a){
  return function (b){
    return function (c){
      return function (d){
        return a*b*c+d;
      }
     
    }
  }
}
console.log(curryFun(2)(4)(5)(6));


// function longdeevicelist(){ 
//     Device :iphone;
//     Price : $999
// }

// console.log(longdeevicelist(device))

// console.log(longdeevicelist(price))

// function multiplyAndSubtract(a,b,c) {
//     return (a*b)-c
// }

// console.log(multiplyAndSubtract(5,2,1))

// var blag = {

//     title : infotech,

//     content : javascript,

//     author : js
// }

//console.log(obj.Add(published:true))

//console.log(obj.delete(author))

function countVowels(str){
    if(str.length===0) return 0

    let vowels = 'aeiou';

    var isvowels = vowels.includes(str[0])? 1:0;
    return isvowels + countVowels(str.slice(1));


}

console.log(countVowels('aeroplane')) 