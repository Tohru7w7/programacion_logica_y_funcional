
let x = [1,2,3,4]
const y=[...x,20,50]
console.log(y)

const edadLegalEUU = 21
const checkEstado = (edad, edadLegal)=>{
    return edad >= edadLegal ? "Eres mayor" : "Eres menor"
}

const persona = checkEstado(18,edadLegalEUU)
console.log(persona)

let arreglo=[
    { id:1,name:"Fernando", age:20 },
    { id:2,name:"Luis", age:22 },
    { id:3,name:"Jose", age:24 },
    { id:4,name:"Victor", age:34 },
]
let ul = document.getElementById("lista")
var todo=""
arreglo.forEach((item)=>{
    item.edad * 10
    todo += `
        <li>${item.name} - EDAD: ${item.age}</li>
    `
})
ul.innerHTML = todo

console.log("arreglo original",arreglo)
var copia=arreglo.map((item,index)=>{
    item.age *= 10
    return item
})
console.log("arreglo modificado",arreglo)
console.log("arreglo modificado",copia)

let url = "https://thesimpsonsapi.com/api/"
fetch(url+"characters").then(response=>{
    if(!response.ok){
        console.log("error en la red")
    }
    return response.json()
}).then(data=>{
    console.log("Datos del personaje: ",data)
    var lis=""
    data.results.forEach(personaje=>{
        lis+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
            <h2>${personaje.name}</h2>
        </li>
        `
        ul.innerHTML = lis
    })
})