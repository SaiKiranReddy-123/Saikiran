//parent


// var div2 = document.getElementById('2')

// console.dir(div2)

// console.log(div1.childNodes[3].innerText)

// var parent = div2.parentElement

// console.log(parent)



// Dom_terversing
// 1.parent
// 2.children
// 3.Sibligs
 
// parent
var div2=document.getElementById("div2")
console.dir(div2)
var parent=div2.parentElement;
// parent.style.backgroundColor='yellow'
console.log(parent);
 
// children
var children =div2.children
console.log(children)
 
// firsterlementchild
var firstelement=div2.firstElementChild
console.log(firstelement)
 
// lastelementchild
var last=div2.lastElementChild
console.log(last)
 
// sibilings
// previous sibilings
// next sibilings
 
 
// next sibilings
var k =div2.nextElementSibling
console.log(k)
// previous sibilings
var s=div2.previousElementSibling
console.log(s)
 
 
// To create newelement in html
var newelement=document.createElement('h1')
newelement.textContent="this is new element";
div2.appendChild(newelement);
console.log(newelement)
newelement.setAttribute('id','newelement')
newelement.setAttribute('class','newelement');

//adding elemnt

var h1 = document.createElement('h1')
h1.textContent = 'This is heading tag'

console.log(h1)
 
var div1 = document.getElementById('div1')

div1.appendChild(h1)
//adding element in particular place
 var p = div1.firstElementChild

 console.log(p)

 div1.insertBefore(h1,p)

//replace

//  var first = document.getElementById('div1')

//  div1.replaceChild(h1,first)
//remove

 var k = document.getElementById('div2')

 //div2.remove()

// removechild

 var delchild = div2.firstElementChild
 console.log(delchild)
 div2.removeChild(delchild)