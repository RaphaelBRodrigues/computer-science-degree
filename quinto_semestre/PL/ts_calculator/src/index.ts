import UserInterface from './UserInterface';

/**
 * Calculator main entry
 */
class Main {
  userInterface: UserInterface;

  constructor() {
    this.userInterface = new UserInterface();

    this.init();
  }

  init() {
    this.userInterface.showMenu();
  }
}

new Main();
