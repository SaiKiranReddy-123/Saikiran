//promise race

Promise.race([
    new Promise((resolve,reject) =>{
        window.setTimeout(()=>{
            resolve(1)
        },1000)
    }),
new Promise((resolve,reject)=>{
    window.setTimeout(()=>{
        reject(2)
    },200)
})
])

.then(data => console.log(data))
.catch(error => console.log(error));

//promise any

Promise.any([
    new Promise((resolve,reject) =>{
        window.setTimeout(()=>{
            resolve(1)
        },1000)
    }),
new Promise((resolve,reject)=>{
    window.setTimeout(()=>{
        reject(2)
    },200)
})
])

.then(data => console.log(data))
.catch(error => console.log(error));

//promise.allsettled

Promise.allSettled([
    new Promise((resolve,reject) =>{
        window.setTimeout(()=>{
            resolve(1)
        },1000)
    }),
new Promise((resolve,reject)=>{
    window.setTimeout(()=>{
        reject(2)
    },200)
})
])

.then(data => console.log(data))
.catch(error => console.log(error));