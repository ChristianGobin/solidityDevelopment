// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import './DataStorage.sol';

//Deploy Original Data Storage Contract through this Contract.
//Need to link original SimpleStorage.sol contract to this contract.
//Inheritance 

contract StorageFactory{
    string newPersonName;
    string newPersonNameT;
    uint8 anotherNum;

    constructor(){
        newPersonName = "Chris from StorageFactor";
        newPersonNameT = "Chris again";
        anotherNum = 54;
    }
    
    //Array keeps track of Storage contracts.
    DataStorage[] public DataStorageArray;
    
    //Create and Deploy new DataStorage Contracts in function
    function addToDataStorageArray() public {
        DataStorage newDataStorageContract = new DataStorage();
        DataStorageArray.push(newDataStorageContract);
    }
    
}
