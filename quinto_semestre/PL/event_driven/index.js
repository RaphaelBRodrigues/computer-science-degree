const EventExemple = require('./Event')

const exemple = new EventExemple()

exemple.addEventListener('exemple', (event) => {
  console.log(event)
})

setInterval(() => {
  exemple.dispatch()
}, 3000)