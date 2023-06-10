const fibbonaci = require("./fibbonaci");

function makeFibbonaciSequence(desiredTestCase) {
  return fibbonaci(desiredTestCase, 0, 1, 0);
}

module.exports = makeFibbonaciSequence;
