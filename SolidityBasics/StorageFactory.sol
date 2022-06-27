// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// This contract stores deploys a SimpleStorage Contract and stores it in an Array
// It also calls functions from the generated contracts using the index in the contract array of the contract.
// This is essentially the same as generating objects and calling their methods. 
// Except the Class = Contract
// Object = Deployed Contract with Address

contract StorageFactory {
    SimpleStorage[] public ssContractArray;

    function generateSimpleStorageContract() public {
        SimpleStorage temporaryStorage = new SimpleStorage();
        ssContractArray.push(temporaryStorage);
    }

    function sfStoreNumber(uint256 _contractIndex, uint256 _storageNumber) public {
        ssContractArray[_contractIndex].storeNumber(_storageNumber);
    }

    function sfShowNumber(uint256 _contractIndex) public view returns(uint256){
        return ssContractArray[_contractIndex].showStorageNumber();
    }
}
