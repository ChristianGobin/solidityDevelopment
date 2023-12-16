//SPDX-License-Identifier: MIT
import './SimpleStorage.sol';

pragma solidity ^0.8.0;

contract StorageFactory {
    SimpleStorage[] public sfFactory;

    function deployToSf() public {
        sfFactory.push(new SimpleStorage());
    }

    function storeNumber(uint256 _simpleStorageIndex, uint256 _simpleStorageValue) public {
        //Address - we need the address of the SimpleStorageContract at the index in the Array
        //ABI - Application Binary Interface -> the standard way to interact with a contract in the Eth ecosystem.

        
    }
}