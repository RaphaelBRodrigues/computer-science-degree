const AvailableTokens = require('./AvailableTokens');

class LexicAnalyzer {
  fileReader = {};

  constructor(fileReader) {
    this.fileReader = fileReader;
  }

  async test(filePath) {
    const content = await this.fileReader.getFileContent(filePath);

    return this.#analyze(content);
  }

  #analyze(text) {
    const programTokens = this.#extractTokens(text);
    console.log({ programTokens })
    const result = programTokens.every((programToken) => {
      const tokenAnalyze = AvailableTokens.some(({ regex }) => {
        return regex.test(programToken);
      })

      console.log({ programToken, tokenAnalyze })
      return tokenAnalyze;
    })

    return result;
  }

  #extractTokens(text) {
    const emptyChars = ["", " ", "\n", "\r"];

    const tokens = text
      .split(/(\ |\n)/gi)
      .filter(char => !emptyChars.includes(char));

    return tokens;
  }
}

module.exports = LexicAnalyzer;