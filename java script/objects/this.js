

var obj = {

    name : 'sai',

    age  : 24,

    city : 'atp',

    play : function(){
        console.log(this)
    }
}

console.log(obj)
obj.play()


console.log(this)


function hello(){
    console.log(this)
}

hello()


var fun1 = function () {
    
    console.log(this)
}

fun1()