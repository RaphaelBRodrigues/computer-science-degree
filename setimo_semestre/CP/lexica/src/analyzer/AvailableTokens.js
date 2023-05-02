const AvailableTokens = [
  {
    name: "IF",
    regex: /IF/gi
  },
  {
    name: "ELSE",
    regex: /ELSE\:/gi
  },
  {
    name: "OP_LOWER",
    regex: /\</gi
  },
  {
    name: "OP_HIGHER",
    regex: /\>/gi
  },
  {
    name: "FUNCTION",
    regex: /[a-z]+(\()(.){0,}(\))/gi
  },
  {
    name: "OP_ASSIGNMENT",
    regex: /\=/gi
  },
  {
    name: "NUMBER",
    regex: /\d+/gi
  },
  {
    name: "STRING",
    regex: /"\w+"/gi
  },
  {
    name: "SPACE",
    regex: /\ /gi
  },
  {
    name: "VARIABLE",
    regex: /(?<!")([a-zA-Z])+([a-zA-Z0-9_#])+(?!")/gi,
    ignoreReserverdWords: true
  },

];

module.exports = AvailableTokens;