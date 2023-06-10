function fibbonaci(
  desiredTestCase,
  currentTestCase,
  lastNumber,
  punultimateNumber
) {

  if (desiredTestCase === currentTestCase) {
    return [lastNumber, currentTestCase];
  }
  const nextTestCase = currentTestCase + 1;

  return fibbonaci(desiredTestCase, nextTestCase, lastNumber + punultimateNumber, lastNumber)
};

module.exports = fibbonaci;