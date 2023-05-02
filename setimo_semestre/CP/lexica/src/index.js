const ReadFile = require('./ReadFile');
const LexicAnalyzer = require('./analyzer/LexicAnalyzer');

const FILE_PATH = "./src/program.cop";

(async () => {
    const fileReader = new ReadFile();
    const analyzer = new LexicAnalyzer(fileReader);

    const isValid = await analyzer.test(FILE_PATH);
    const result = isValid ? " " : " não ";

    console.log(`O programa${result}passou na análise léxica`);
})()

