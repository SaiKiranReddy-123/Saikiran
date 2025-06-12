//throttling



var div  = document.getElementById('performance')

var n = 0

var t = 0

var d = 0

 var normal = document.getElementById('n')  

  var throttling = document.getElementById('t')


function normal(){
    n++
    normalevent.innerText = `normal :${n}`;
}

function throttling(){
    setTimeout(()=>{

    },2000)
     t++
    throttling.innerText = `throttling  :${t}`;
}



div.addEventListener('click',() =>{
    

    normal();

    throttling();
})
