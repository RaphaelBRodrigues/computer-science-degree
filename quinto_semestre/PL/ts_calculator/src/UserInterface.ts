import Operations from "./Operations";
import readLine from 'readline';
import { stdin, stdout } from 'process';
import Memory from "./Memory";

class UserInterface {
  operations: Operations;
  readLineInterface: readLine.Interface;
  memory: Memory;

  constructor() {
    this.operations = new Operations();
    this.memory = new Memory();

    this.readLineInterface = readLine.createInterface({
      input: stdin,
      output: stdout
    });
  }

  async showMenu() {
    console.log("Available Operations")
    this.operations.operationList.forEach((operation, index) => {
      console.log(`${index + 1} - ${operation}`)
    });

    console.log("H - History");

    this.readLineInterface
      .question("Type a character to start: ", this.handleAnswer);
  }


  readEntries(useMemoryValue: boolean) {
    console.log(useMemoryValue);
  }

  showResultHistory() {
    console.log("History");
    this.memory.resultList.forEach((result) => {
      console.log(result + "\n")
    });
  }

  handleAnswer(value: string) {
    switch (value.toLowerCase()) {
      case "h": {
        this.showResultHistory();
      }
    }
  }
}

export default UserInterface;