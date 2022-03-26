import Operations from './Operations';
import readLine from 'readline';
import { stdin, stdout } from 'process';
import Memory from './Memory';
import { IUserInterface } from './types';

class UserInterface implements IUserInterface {
  operations: Operations;
  readLineInterface: readLine.Interface;
  memory: Memory;

  constructor() {
    this.memory = new Memory();
    this.operations = new Operations(this.memory);
    this.handleAnswer = this.handleAnswer.bind(this);

    this.readLineInterface = readLine.createInterface({
      input: stdin,
      output: stdout,
    });
  }

  async showMenu() {
    console.clear();
    console.log('\nAvailable Operations');
    this.operations.operationList.forEach((operation, index) => {
      console.log(`${index + 1} - ${operation}`);
    });

    console.log('0 - History');

    this.readLineInterface.question(
      'Type a character to start: ',
      this.handleAnswer,
    );
  }

  async askUserParam(message: string) {
    return await new Promise<number>((resolve) => {
      this.readLineInterface.question(message, (typedValue) => {
        resolve(+typedValue);
      });
    });
  }

  async readEntries(uniqueEntry: boolean) {
    if (uniqueEntry) {
      const firstValue = await this.askUserParam('Type a number: ');

      return [firstValue];
    } else {
      const firstValue = await this.askUserParam('Type the first value: ');
      const secondValue = await this.askUserParam('Type the second value: ');

      return [firstValue, secondValue];
    }
  }

  showHistoric() {
    console.clear();
    console.log('\n\n============ HISTORIC ============\n');
    this.memory.resultList.forEach((result, index) => {
      console.log(index + 1 + ' - ' + result + '\n');
    });
    console.log('============ HISTORIC ============');
  }

  displayResult(result: number, message: String = '') {
    console.clear();
    console.log('================= ' + message + ' =================');
    console.log('Result: ', result);
    console.log('================= ' + message + ' =================');

    console.log('Backing to menu in 5 seconds');

    setTimeout(() => {
      this.showMenu();
    }, 5000);
  }

  async handleAnswer(value: string) {
    const typedOption = +value;
    const selectedOperation = this.operations.operationList[typedOption - 1];

    switch (typedOption) {
      case 1: {
        const values = await this.readEntries(false);

        const result = this.operations.sum(values);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 2: {
        const values = await this.readEntries(false);

        const result = this.operations.subtraction(values);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 3: {
        const values = await this.readEntries(false);

        const result = this.operations.multiplication(values);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 4: {
        const values = await this.readEntries(false);

        const result = this.operations.division(values);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 5: {
        const [value] = await this.readEntries(true);

        const result = this.operations.squaredNumber(value);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 6: {
        const [value] = await this.readEntries(true);

        const result = this.operations.cubedNumber(value);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 7: {
        const [value] = await this.readEntries(true);

        const result = this.operations.squareRoot(value);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 8: {
        const [value] = await this.readEntries(true);

        const result = this.operations.cubicRoot(value);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 9: {
        const [value] = await this.readEntries(true);

        const result = this.operations.logarithm(value);
        this.displayResult(result, selectedOperation);
        break;
      }
      case 0: {
        this.showHistoric();
        break;
      }
      default: {
        console.clear();
        console.error('Invalid Operation');
      }
    }
  }
}

export default UserInterface;
