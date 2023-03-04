const {
  END_PATH,
  paths
} = require('./constants/paths')

const traveledPath = [];

function getBestPath(path, endpath) {
  const [firstPath, secondPath] = path.possiblePaths;

  if (!secondPath && firstPath.pathname === endpath) {
    traveledPath.push(firstPath.pathname)

    return {
      distance: firstPath.traveledDistance + firstPath.distance
    };
  }

  const bestPath = firstPath.isBetter(secondPath) ? firstPath : secondPath;
  traveledPath.push(bestPath.pathname)

  if (bestPath.possiblePaths.length) {
    return getBestPath(bestPath, endpath)
  }

  return traveledPath;
}

const {
  distance
} = getBestPath(paths, END_PATH)

console.log("Best path: " + traveledPath)
console.log("Traveled distancce: " + distance)