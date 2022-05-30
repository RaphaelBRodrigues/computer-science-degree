const events = require('events')

class EventExemple {
  eventEmitter

  constructor() {
    this.eventEmitter = new events.EventEmitter()
  }
  dispatch() {
    this.eventEmitter.emit('exemple', {
      success: true,
    })
  }

  addEventListener(eventName, callback) {
    return this.eventEmitter.on(eventName, callback)
  }
}

module.exports = EventExemple;