// SPDX-License-Identifier: MIT

import { SimpleStorage } from './SimpleStorage.sol';
pragma solidity ^0.8.0;


contract StorageFactory {
    uint256 internal arrayIndex;
    
    SimpleStorage public simpleStorage;
    SimpleStorage[] public simpleStorageArray;

    // Generate and Deploy New Simple Storage Contract.
    function generateSimpleStorage() public {
        simpleStorage = new SimpleStorage();
    }

    function addSimpleStorageToArray() public {
        simpleStorageArray.push(simpleStorage);
    }

    // function shows how many contracts are in the array
    function checkArray() public view returns(uint256) {
        return arrayIndex;
    }

    // function needs to store value at specific contract at the index of the array
    function storeNumber(uint256 _indexOfContract, uint256 _valueToStore) public {
        // needs to use contract address
        // needs to use abi to access contract methods.

        
        
    }
}

