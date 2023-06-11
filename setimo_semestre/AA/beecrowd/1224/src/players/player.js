function makePlayer(name, isFirstPlayer = false) {
  return {
    points: 0,
    name,
    turn: !!isFirstPlayer
  }
};

module.exports = makePlayer;