//bubbling

var btn = document.getElementById('btn')
btn.addEventListener('click',function(){
    console.log('this is console.messege')
})

var fun = function(){       
    console.log('this is a js console messege')
}

btn.addEventListener('click',fun)

var div = document.getElementById('divcolor')

div.addEventListener('mouseover',function(){
    div.style.backgroundColor = 'blue'
})

btn.addEventListener('click',function(){
    alert('this is alert messege')
})