const fs = require("fs")

class ReadFile {
    async getFileContent(filepath) {
        const fileContent = await new Promise(resolve => {
            fs.readFile(filepath, (_, data) => {
                resolve(data.toString());
            })
        })

        return fileContent;
    }
}

module.exports = ReadFile;