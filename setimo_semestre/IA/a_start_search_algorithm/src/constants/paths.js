const Path = require('../Path')

const END_PATH = 'e';
const BEGIN_PATH = 's';

const paths = new Path({
  pathname: BEGIN_PATH,
  heuristic: 0,
  distance: 0,
  possiblePaths: []
})

const pathA = paths.add({
  pathname: "a",
  distance: 1,
  heuristic: 5,
})

const pathX = pathA.add({
  pathname: "x",
  distance: 4,
  heuristic: 5,
})

pathX.add({
  pathname: "e",
  distance: 2,
  heuristic: 0,
})

const pathY = pathA.add({
  pathname: "y",
  distance: 7,
  heuristic: 8,
})

pathY.add({
  pathname: "e",
  distance: 3,
  heuristic: 0
})

const pathB = paths.add({
  pathname: "b",
  distance: 2,
  heuristic: 6,
})

const pathC = pathB.add({
  pathname: "c",
  distance: 7,
  heuristic: 4,
})

pathC.add({
  pathname: "e",
  distance: 5,
  heuristic: 0,
})

const pathD = pathB.add({
  pathname: "d",
  distance: 1,
  heuristic: 15,
});

pathD.add({
  pathname: "e",
  distance: 12,
  heuristic: 0,
})

module.exports = {
  paths,
  END_PATH,
  BEGIN_PATH
}