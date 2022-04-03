const path = require("path");
const fs = require("fs");
const solc = require("solc");

//Get file path of solidity contract and store in a const.
const inboxPath = path.resolve(__dirname, "contracts", "Inbox.sol");
console.log(inboxPath); //sanity check.

//source code for inbox contract. using file system reader
const source = fs.readFileSync(inboxPath, "utf8");

//export the contract properties that we need.
module.exports = solc.compile(source, 1).contracts[":Inbox"];
