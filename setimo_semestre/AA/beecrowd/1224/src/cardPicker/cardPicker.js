require('core-js')

function cardPicker(
  orderedCardValues,
  players
) {

  const [_, currentPlayer] = players.entries().find(([_, player]) => player.turn);
  const selectedCard = Math.max(orderedCardValues[0], orderedCardValues.at(-1));

  const remainingCards = orderedCardValues.filter((value) => {
    return value !== selectedCard;
  });


  currentPlayer.points += selectedCard;

  players.forEach((player) => {
    players.set(player.name, {
      ...player,
      turn: true
    })
  });

  players.set(currentPlayer.name, {
    ...currentPlayer,
    turn: false
  })

  if (!remainingCards.length) {
    return players;
  }

  return cardPicker(remainingCards, players)
}

module.exports = cardPicker;