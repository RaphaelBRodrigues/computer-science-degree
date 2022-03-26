import Memory from './Memory';
import { OPERATION_LIST } from './types';

class Operations {
  memory: Memory;
  operationList: Array<String>;

  constructor(memory: Memory) {
    this.memory = memory;
    this.operationList = OPERATION_LIST;
  }

  sum(values: Array<number>) {
    const [firstValue, secondValue] = values;
    const result = firstValue + secondValue;

    this.memory.saveResult(result);

    return result;
  }

  subtraction(values: Array<number>) {
    const [firstValue, secondValue] = values;
    const result = firstValue - secondValue;

    this.memory.saveResult(result);

    return result;
  }

  multiplication(values: Array<number>) {
    const [firstValue, secondValue] = values;
    const result = firstValue * secondValue;

    this.memory.saveResult(result);

    return result;
  }

  division(values: Array<number>) {
    const [firstValue, secondValue] = values;
    const result = firstValue / secondValue;

    this.memory.saveResult(result);

    return result;
  }

  squaredNumber(value: number) {
    const result = value ^ 2;

    this.memory.saveResult(result);

    return result;
  }

  cubedNumber(value: number) {
    const result = Math.pow(value, 3);

    this.memory.saveResult(result);

    return result;
  }

  squareRoot(value: number) {
    const result = Math.sqrt(value);

    this.memory.saveResult(result);

    return result;
  }

  cubicRoot(value: number) {
    const result = Math.cbrt(value);

    this.memory.saveResult(result);

    return result;
  }

  logarithm(value: number) {
    const result = Math.log(value);

    this.memory.saveResult(result);

    return result;
  }
}

export default Operations;
