//
//	Write a curried function calculateExpression(a)(b)(c) that returns a + (b * c).
//  Call the function with values and return the result.

function calculateExpression(a){
    return function(b){
        return function(c){
            return a+(b*c)
        }
    }
}

var k = calculateExpression(2)(3)(4)
console.log(k)

//
2.	//Write a function cleanText(text) that:
	//Trims leading/trailing whitespace
	//Converts to lowercase
	//Checks if the text starts with "data:"
	//Replaces "null" with "empty"
	//Splits the string into an array of words

function cleanText(text){
    let clean=text.trim('');
    clean=clean.toLowerCase('');

    let k = clean.startsWith('data:');

    clean = clean.replace(/null/,'empty');

    let l = clean.split(' ')
return{
    k,
    l
};



}

let r = cleanText('data: this is null and Null and something else...')

console.log(r)

