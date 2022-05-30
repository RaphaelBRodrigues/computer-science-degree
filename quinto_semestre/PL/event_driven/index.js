const EventExemple = require('./Event')

const exemple = new EventExemple()

// Listener responsável por tratar o evento
exemple.addEventListener('exemple', (event) => {
  console.log(event)
})

setInterval(() => {
  // Método do objeto exemple responsávelo por disparar o evento
  exemple.dispatch()
}, 3000)