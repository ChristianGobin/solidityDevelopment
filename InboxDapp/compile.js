const path = require('path');
const fs = require('fs');
const solc = require('solc');

//Path of Inbox.sol, contract.
let inboxPath = path.resolve(__dirname, 'contracts', './Inbox.sol');

//Source code of the contract
let source = fs.readFileSync(inboxPath, 'utf8');

let compiledCode = solc.compile(source, 1);
console.log(compiledCode);
