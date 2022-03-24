import Memory from './Memory';
import { OPERATION_LIST } from './types';

class Operations {
  memory: Memory;
  operationList: Array<String>


  constructor() {
    this.memory = new Memory();
    this.operationList = OPERATION_LIST;
  }

  sum(firstValue: number, secondValue: number) {
    const result = firstValue + secondValue;

    this.memory.saveResult(result);

    return result;
  }
}

export default Operations;