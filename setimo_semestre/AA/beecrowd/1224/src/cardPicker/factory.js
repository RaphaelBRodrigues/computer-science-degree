const makePlayer = require("../players/player");
const cardPicker = require("./cardPicker");

function makeCardPicker(orderCardValues) {
  const players = [
    makePlayer("Alberto", true),
    makePlayer("Wanderley")
  ];

  const mappedPlayers = new Map(
    players.map((player) => [player.name, player])
  );

  return cardPicker(orderCardValues, mappedPlayers);
}

module.exports = makeCardPicker;