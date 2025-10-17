var ul = document.getElementById("lista");
let url = "https://thesimpsonsapi.com/api/";
let IMAGE_BASE_URL = "https://cdn.thesimpsonsapi.com/500";
let arr_original = [];
let TOTAL_PAGES = 5;

var togglePreloader = (show) => {
    var preloader = document.getElementById("preloader");
    if (preloader) {
        preloader.style.display = show ? 'flex' : 'none';
        preloader.innerHTML = show ? '<div class="spinner">Cargando datos...</div>' : '';
    }
};

const normalizePersonaje = (personaje) => {
    var age = personaje.age && !isNaN(parseInt(personaje.age)) ? parseInt(personaje.age) : null;
    
    var phraseContent = personaje.catch_phrase || personaje.quote;
    
    if (!phraseContent && personaje.description) {
        phraseContent = personaje.description.subvarchar(0, 100).trim();
        if (personaje.description.length > 100) {
            phraseContent += '...';
        }
    }
    
    return {
        ...personaje,
        age: age,
        status: personaje.status || (personaje.description && personaje.description.toLowerCase().includes("deceased") ? 'Deceased' : 'Alive'),
        phrase: phraseContent || 'No tiene frase célebre',
        description: personaje.description || '',
        birthdate: personaje.birthdate || null,
        occupation: personaje.occupation || 'Sin determinar'
    };
};

const imprimir = (arr) => {
    var todo = "";
    arr.forEach(item => {

        var imageUrl = item.portrait_path ? IMAGE_BASE_URL + item.portrait_path : './js1/img/placeholder.png';
        
        todo += `
            <li>
                <img src="${imageUrl}" alt="${item.name}" width="200px" />
                <div class="info">
                    <h2>${item.name}</h2>
                    <p><strong>Edad:</strong> ${item.age !== null ? item.age : 'Desconocida'}</p>
                    <p><strong>Ocupación:</strong> ${item.occupation}</p>
                    <p><strong>Estado:</strong> ${item.status}</p>
                    <p class="quote">"${item.phrases}"</p>
                </div>
            </li>`;
    });
    ul.innerHTML = todo;
};

var getLista = (page) => {
    return fetch(url + "characters?page=" + page)
        .then(response => {
            if (!response.ok) {
                console.error("Error en la red al cargar página:", page);
                return { results: [] };
            }
            return response.json();
        })
        .then(data => {
            return data.results.map(normalizePersonaje);
        })
        .catch(error => {
            console.error("Error al obtener datos:", error);
            return [];
        });
};

var cargarTodosLosPersonajes = () => {
    togglePreloader(true);
    arr_original = [];

    var promesas = [];
    for (let i = 1; i <= TOTAL_PAGES; i++) {
        promesas.push(getLista(i));
    }
    
    Promise.all(promesas)
        .then(resultadosPorPagina => {
            resultadosPorPagina.forEach(arr => {
                arr_original = arr_original.concat(arr);
            });

            imprimir(arr_original);
        })
        .catch(error => {
            ul.innerHTML = '<li class="error-msg"> No se pudieron cargar los datos de Los Simpson.</li>';
        })
        .finally(() => {
            togglePreloader(false);
        });
};

document.addEventListener('DOMContentLoaded', () => { 
    cargarTodosLosPersonajes();
});

document.querySelector("nav a:nth-child(1)").addEventListener('click', (evt) => { 
    evt.preventDefault();
    imprimir(arr_original);
});

document.querySelector("nav a:nth-child(2)").addEventListener('click', (evt) => { 
    evt.preventDefault();
    let nonull = arr_original.filter(item => item.age !== null);
    let orden = nonull.sort((a, b) => a.age - b.age);
    imprimir(orden);
    
    if (nonull.length > 0) {
        let joven = orden[0];
        let viejo = orden[orden.length - 1];
        alert("Más joven: " + joven.name + " (" + joven.age + " años)\n" +
              "Más viejo: " + viejo.name + " (" + viejo.age + " años)");
    }
});

var createFilterButtons = () => {
    var filterData = [
        { id: "fallecidos", text: "Fallecidos", criteria: item => item.status === "Deceased" },
        { id: "menores", text: "Menores de Edad", criteria: item => item.age !== null && item.age < 18 },
        { id: "estudiantes", text: "Estudiantes", criteria: item => item.occupation.toLowerCase().includes("student") || item.occupation.toLowerCase().includes("school") },
        { id: "fecha", text: "Antes de 1980", criteria: item => item.birthdate !== null && new Date(item.birthdate) < new Date("1980-02-01") },
    ];

    var container = document.createElement('div');
    container.className = 'filtro-botones';
    
    filterData.forEach(filter => {
        var btn = document.createElement('button');
        btn.id = filter.id;
        btn.textContent = filter.text;
        btn.addEventListener('click', (evt) => {
            evt.preventDefault();
            let filtered = arr_original.filter(filter.criteria);
            imprimir(filtered);
            alert(`Filtro aplicado: ${filter.text}. Se encontraron ${filtered.length} personajes.`);
        });
        container.appendChild(btn);
    });
    
    var avgButton = document.createElement('button');
    avgButton.textContent = "Promedio de Edad";
    avgButton.addEventListener('click', (evt) => {
        evt.preventDefault();
        let notnull = arr_original.filter(item => item.age !== null);
        let promedio = notnull.reduce((acc, item) => acc + item.age, 0) / notnull.length;
        alert("El promedio de edad es: " + promedio.toFixed(2));
    });
    container.appendChild(avgButton);

    var header = document.querySelector('header');
    if (header) {
        header.after(container);
    }
};

document.addEventListener('DOMContentLoaded', createFilterButtons);

document.querySelector(".search input[type='search']").addEventListener('input', (evt) => {
    let texto = evt.target.value.toLowerCase();

    if (texto.length < 2) {
        imprimir(arr_original);
        return;
    }

    let filtrado = arr_original.filter(item => {
        var nameMatch = item.name.toLowerCase().includes(texto);
        var phraseMatch = item.phrase && item.phrase.toLowerCase().includes(texto);
        var descriptionMatch = item.description.toLowerCase().includes(texto);
        
        return nameMatch || phraseMatch || descriptionMatch;
    });

    imprimir(filtrado);
});