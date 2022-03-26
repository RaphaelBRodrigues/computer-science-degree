import ReadLine from 'readline';
import Memory from '../Memory';
import Operations from '../Operations';

export interface IUserInterface {
  operations: Operations;
  readLineInterface: ReadLine.Interface;
  memory: Memory;

  displayResult(result: number, message: string): void;
}
