const ReadFile = require('./ReadFile');
const Compiler = require('./Compiler');

const FILE_PATH = "./src/program.cop";

const file = new ReadFile(FILE_PATH);

(async () => {
    const fileContent = await file.execute();
    console.log({fileContent})
})()

