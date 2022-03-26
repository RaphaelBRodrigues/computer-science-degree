class Memory {
  resultList: Array<number>

  constructor() {
    this.resultList = [];
  }

  getLastResult() {
    return this.resultList.at(-1);
  }

  saveResult(value: number) {
    this.resultList.push(value);
  }
}

export default Memory;