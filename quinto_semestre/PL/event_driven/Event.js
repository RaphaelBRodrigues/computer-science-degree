const events = require('events')

class EventExemple {
  eventEmitter

  constructor() {
    this.eventEmitter = new events.EventEmitter()
  }

  // Método responsável por emitir eventos 
  dispatch() {
    this.eventEmitter.emit('exemple', {
      success: true,
    })
  }

  // Método responsável por adicionar listeners 
  addEventListener(eventName, callback) {
    return this.eventEmitter.on(eventName, callback)
  }
}

module.exports = EventExemple;