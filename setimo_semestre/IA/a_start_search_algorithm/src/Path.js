class Path {
  pathname = "";
  heuristic = 0;
  distance = 0;
  possiblePaths = []
  traveledDistance = 0

  constructor({
    pathname,
    heuristic,
    distance,
    traveledDistance = 0
  }) {
    this.pathname = pathname;
    this.heuristic = heuristic;
    this.distance = distance;
    this.traveledDistance = traveledDistance;
  }

  isBetter(pathToCompare) {
    const currentPathCost = this.distance + this.heuristic;
    const comparedPathCost = pathToCompare.distance + pathToCompare.heuristic

    if (currentPathCost > comparedPathCost) {
      return false
    }

    return true;
  }

  add({
    pathname,
    heuristic,
    distance,
  }) {
    const path = new Path({
      pathname,
      heuristic,
      distance,
      traveledDistance: this.traveledDistance + this.distance
    });

    this.possiblePaths.push(path)

    return path;
  }
}


module.exports = Path;
