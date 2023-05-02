const fs = require("fs")

class ReadFile {
    filepath = "";

    constructor(filepath) {
        this.filepath = filepath;
    }

    async execute() {
        const fileContent = await new Promise(resolve => {
            fs.readFile(this.filepath,(_, data) => {
                resolve(data.toString());
            })
        }) 
        
        return fileContent;
    }
}

module.exports = ReadFile;