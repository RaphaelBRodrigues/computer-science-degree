const makeFibbonaciSequence = require("./fibbonaci/factory");

const n = 9;

const [result, calls] = makeFibbonaciSequence(n);

console.info(`fib(${n}) = ${result} calls = ${calls}`)